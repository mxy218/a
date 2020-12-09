.class Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrokerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 704
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$1;)V
    .registers 3

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 708
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_43e

    .line 908
    :pswitch_5  #0x11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_422

    .line 799
    :pswitch_1f  #0x21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_24
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3d

    .line 801
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->scoClientDied(Ljava/lang/Object;)V

    .line 802
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3a

    .line 803
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3d

    .line 804
    goto/16 :goto_422

    .line 802
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1

    .line 803
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw p1

    .line 892
    :pswitch_40  #0x20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 893
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBluetoothA2dpActiveDeviceChangeExt  state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 898
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prof="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 900
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 893
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 901
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 902
    :try_start_9a
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    iget-boolean v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    iget v8, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceInventory;->handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 905
    monitor-exit v1

    .line 906
    goto/16 :goto_422

    .line 905
    :catchall_b0
    move-exception p1

    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_b0

    throw p1

    .line 879
    :pswitch_b3  #0x1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    .line 881
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHearingAidDeviceConnectionState state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 883
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 885
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 881
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 886
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 887
    :try_start_104
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mMusicDevice:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 889
    monitor-exit v1

    .line 890
    goto/16 :goto_422

    .line 889
    :catchall_118
    move-exception p1

    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_118

    throw p1

    .line 863
    :pswitch_11b  #0x1d, 0x1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 864
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent  state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 869
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prof="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 871
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 864
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 872
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 873
    :try_start_176
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    iget-boolean v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    .line 876
    monitor-exit v1

    .line 877
    goto/16 :goto_422

    .line 876
    :catchall_18d
    move-exception p1

    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_176 .. :try_end_18f} :catchall_18d

    throw p1

    .line 737
    :pswitch_190  #0x1b, 0x1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 738
    :try_start_197
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 740
    monitor-exit v0

    .line 741
    goto/16 :goto_422

    .line 740
    :catchall_1a9
    move-exception p1

    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_197 .. :try_end_1ab} :catchall_1a9

    throw p1

    .line 855
    :pswitch_1ac  #0x1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_1b1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b8
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_1cc

    .line 857
    :try_start_1b8
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 858
    monitor-exit v1
    :try_end_1c6
    .catchall {:try_start_1b8 .. :try_end_1c6} :catchall_1c9

    .line 859
    :try_start_1c6
    monitor-exit v0
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1cc

    .line 860
    goto/16 :goto_422

    .line 858
    :catchall_1c9
    move-exception p1

    :try_start_1ca
    monitor-exit v1
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    :try_start_1cb
    throw p1

    .line 859
    :catchall_1cc
    move-exception p1

    monitor-exit v0
    :try_end_1ce
    .catchall {:try_start_1cb .. :try_end_1ce} :catchall_1cc

    throw p1

    .line 850
    :pswitch_1cf  #0x19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 851
    :try_start_1d6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 852
    monitor-exit v0

    .line 853
    goto/16 :goto_422

    .line 852
    :catchall_1e6
    move-exception p1

    monitor-exit v0
    :try_end_1e8
    .catchall {:try_start_1d6 .. :try_end_1e8} :catchall_1e6

    throw p1

    .line 845
    :pswitch_1e9  #0x18
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 846
    :try_start_1f0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 847
    monitor-exit v0

    .line 848
    goto/16 :goto_422

    .line 847
    :catchall_200
    move-exception p1

    monitor-exit v0
    :try_end_202
    .catchall {:try_start_1f0 .. :try_end_202} :catchall_200

    throw p1

    .line 840
    :pswitch_203  #0x17
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 841
    :try_start_20a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 842
    monitor-exit v0

    .line 843
    goto/16 :goto_422

    .line 842
    :catchall_21a
    move-exception p1

    monitor-exit v0
    :try_end_21c
    .catchall {:try_start_20a .. :try_end_21c} :catchall_21a

    throw p1

    .line 833
    :pswitch_21d  #0x16
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_222
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_229
    .catchall {:try_start_222 .. :try_end_229} :catchall_239

    .line 835
    :try_start_229
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    .line 836
    monitor-exit v1
    :try_end_233
    .catchall {:try_start_229 .. :try_end_233} :catchall_236

    .line 837
    :try_start_233
    monitor-exit v0
    :try_end_234
    .catchall {:try_start_233 .. :try_end_234} :catchall_239

    .line 838
    goto/16 :goto_422

    .line 836
    :catchall_236
    move-exception p1

    :try_start_237
    monitor-exit v1
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_236

    :try_start_238
    throw p1

    .line 837
    :catchall_239
    move-exception p1

    monitor-exit v0
    :try_end_23b
    .catchall {:try_start_238 .. :try_end_23b} :catchall_239

    throw p1

    .line 828
    :pswitch_23c  #0x15
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 829
    :try_start_243
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    .line 830
    monitor-exit v0

    .line 831
    goto/16 :goto_422

    .line 830
    :catchall_24f
    move-exception p1

    monitor-exit v0
    :try_end_251
    .catchall {:try_start_243 .. :try_end_251} :catchall_24f

    throw p1

    .line 823
    :pswitch_252  #0x14
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 824
    :try_start_259
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    .line 825
    monitor-exit v0

    .line 826
    goto/16 :goto_422

    .line 825
    :catchall_265
    move-exception p1

    monitor-exit v0
    :try_end_267
    .catchall {:try_start_259 .. :try_end_267} :catchall_265

    throw p1

    .line 818
    :pswitch_268  #0x13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 819
    :try_start_26f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    .line 820
    monitor-exit v0

    .line 821
    goto/16 :goto_422

    .line 820
    :catchall_27b
    move-exception p1

    monitor-exit v0
    :try_end_27d
    .catchall {:try_start_26f .. :try_end_27d} :catchall_27b

    throw p1

    .line 811
    :pswitch_27e  #0x12
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 812
    :try_start_285
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 815
    monitor-exit v0

    .line 816
    goto/16 :goto_422

    .line 815
    :catchall_296
    move-exception p1

    monitor-exit v0
    :try_end_298
    .catchall {:try_start_285 .. :try_end_298} :catchall_296

    throw p1

    .line 792
    :pswitch_299  #0x10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_29e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2a5
    .catchall {:try_start_29e .. :try_end_2a5} :catchall_2b7

    .line 794
    :try_start_2a5
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothSco(I)V

    .line 795
    monitor-exit v1
    :try_end_2b1
    .catchall {:try_start_2a5 .. :try_end_2b1} :catchall_2b4

    .line 796
    :try_start_2b1
    monitor-exit v0
    :try_end_2b2
    .catchall {:try_start_2b1 .. :try_end_2b2} :catchall_2b7

    .line 797
    goto/16 :goto_422

    .line 795
    :catchall_2b4
    move-exception p1

    :try_start_2b5
    monitor-exit v1
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    :try_start_2b6
    throw p1

    .line 796
    :catchall_2b7
    move-exception p1

    monitor-exit v0
    :try_end_2b9
    .catchall {:try_start_2b6 .. :try_end_2b9} :catchall_2b7

    throw p1

    .line 787
    :pswitch_2ba  #0xf
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 788
    :try_start_2c1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 789
    monitor-exit v0

    .line 790
    goto/16 :goto_422

    .line 789
    :catchall_2cf
    move-exception p1

    monitor-exit v0
    :try_end_2d1
    .catchall {:try_start_2c1 .. :try_end_2d1} :catchall_2cf

    throw p1

    .line 782
    :pswitch_2d2  #0xe
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 783
    :try_start_2d9
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(II)V

    .line 784
    monitor-exit v0

    .line 785
    goto/16 :goto_422

    .line 784
    :catchall_2e9
    move-exception p1

    monitor-exit v0
    :try_end_2eb
    .catchall {:try_start_2d9 .. :try_end_2eb} :catchall_2e9

    throw p1

    .line 731
    :pswitch_2ec  #0xd
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 732
    :try_start_2f3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 733
    monitor-exit v0

    .line 734
    goto/16 :goto_422

    .line 733
    :catchall_2ff
    move-exception p1

    monitor-exit v0
    :try_end_301
    .catchall {:try_start_2f3 .. :try_end_301} :catchall_2ff

    throw p1

    .line 779
    :pswitch_302  #0xc
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$700(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 780
    goto/16 :goto_422

    .line 770
    :pswitch_309  #0xb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 771
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 772
    :try_start_314
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 773
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v5, -0x1

    invoke-direct {v4, v0, v5, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 776
    monitor-exit v1

    .line 777
    goto/16 :goto_422

    .line 776
    :catchall_331
    move-exception p1

    monitor-exit v1
    :try_end_333
    .catchall {:try_start_314 .. :try_end_333} :catchall_331

    throw p1

    .line 764
    :pswitch_334  #0xa
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_33b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 766
    monitor-exit v0

    .line 767
    goto/16 :goto_422

    .line 766
    :catchall_34d
    move-exception p1

    monitor-exit v0
    :try_end_34f
    .catchall {:try_start_33b .. :try_end_34f} :catchall_34d

    throw p1

    .line 756
    :pswitch_350  #0x9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_355
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_35c
    .catchall {:try_start_355 .. :try_end_35c} :catchall_36c

    .line 758
    :try_start_35c
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 759
    monitor-exit v1
    :try_end_366
    .catchall {:try_start_35c .. :try_end_366} :catchall_369

    .line 760
    :try_start_366
    monitor-exit v0
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_36c

    .line 761
    goto/16 :goto_422

    .line 759
    :catchall_369
    move-exception p1

    :try_start_36a
    monitor-exit v1
    :try_end_36b
    .catchall {:try_start_36a .. :try_end_36b} :catchall_369

    :try_start_36b
    throw p1

    .line 760
    :catchall_36c
    move-exception p1

    monitor-exit v0
    :try_end_36e
    .catchall {:try_start_36b .. :try_end_36e} :catchall_36c

    throw p1

    .line 749
    :pswitch_36f  #0x8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 750
    :try_start_376
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 752
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v4

    .line 750
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 753
    monitor-exit v0

    .line 754
    goto/16 :goto_422

    .line 753
    :catchall_392
    move-exception p1

    monitor-exit v0
    :try_end_394
    .catchall {:try_start_376 .. :try_end_394} :catchall_392

    throw p1

    .line 743
    :pswitch_395  #0x7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 744
    :try_start_39c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 746
    monitor-exit v0

    .line 747
    goto/16 :goto_422

    .line 746
    :catchall_3ae
    move-exception p1

    monitor-exit v0
    :try_end_3b0
    .catchall {:try_start_39c .. :try_end_3b0} :catchall_3ae

    throw p1

    .line 806
    :pswitch_3b1  #0x6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 807
    :try_start_3b8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 808
    monitor-exit v0

    .line 809
    goto :goto_422

    .line 808
    :catchall_3c3
    move-exception p1

    monitor-exit v0
    :try_end_3c5
    .catchall {:try_start_3b8 .. :try_end_3c5} :catchall_3c3

    throw p1

    .line 728
    :pswitch_3c6  #0x4, 0x5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V

    .line 729
    goto :goto_422

    .line 722
    :pswitch_3d4  #0x3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 723
    :try_start_3db
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 724
    monitor-exit v0

    .line 725
    goto :goto_422

    .line 724
    :catchall_3e8
    move-exception p1

    monitor-exit v0
    :try_end_3ea
    .catchall {:try_start_3db .. :try_end_3ea} :catchall_3e8

    throw p1

    .line 716
    :pswitch_3eb  #0x2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 717
    :try_start_3f2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 719
    monitor-exit v0

    .line 720
    goto :goto_422

    .line 719
    :catchall_401
    move-exception p1

    monitor-exit v0
    :try_end_403
    .catchall {:try_start_3f2 .. :try_end_403} :catchall_401

    throw p1

    .line 710
    :pswitch_404  #0x1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 711
    :try_start_40b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 712
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 713
    monitor-exit v0

    .line 714
    goto :goto_422

    .line 713
    :catchall_41f
    move-exception p1

    monitor-exit v0
    :try_end_421
    .catchall {:try_start_40b .. :try_end_421} :catchall_41f

    throw p1

    .line 910
    :goto_422
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->access$800(I)Z

    move-result p1

    if-eqz p1, :cond_43c

    .line 912
    :try_start_42a
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->access$900(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_433
    .catch Ljava/lang/Exception; {:try_start_42a .. :try_end_433} :catch_434

    .line 915
    goto :goto_43c

    .line 913
    :catch_434
    move-exception p1

    .line 914
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Exception releasing wakelock"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    :cond_43c
    :goto_43c
    return-void

    nop

    :pswitch_data_43e
    .packed-switch 0x1
        :pswitch_404  #00000001
        :pswitch_3eb  #00000002
        :pswitch_3d4  #00000003
        :pswitch_3c6  #00000004
        :pswitch_3c6  #00000005
        :pswitch_3b1  #00000006
        :pswitch_395  #00000007
        :pswitch_36f  #00000008
        :pswitch_350  #00000009
        :pswitch_334  #0000000a
        :pswitch_309  #0000000b
        :pswitch_302  #0000000c
        :pswitch_2ec  #0000000d
        :pswitch_2d2  #0000000e
        :pswitch_2ba  #0000000f
        :pswitch_299  #00000010
        :pswitch_5  #00000011
        :pswitch_27e  #00000012
        :pswitch_268  #00000013
        :pswitch_252  #00000014
        :pswitch_23c  #00000015
        :pswitch_21d  #00000016
        :pswitch_203  #00000017
        :pswitch_1e9  #00000018
        :pswitch_1cf  #00000019
        :pswitch_1ac  #0000001a
        :pswitch_190  #0000001b
        :pswitch_190  #0000001c
        :pswitch_11b  #0000001d
        :pswitch_11b  #0000001e
        :pswitch_b3  #0000001f
        :pswitch_40  #00000020
        :pswitch_1f  #00000021
    .end packed-switch
.end method
