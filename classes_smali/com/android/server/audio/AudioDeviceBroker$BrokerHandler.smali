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

    .line 764
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;
    .param p2, "x1"  # Lcom/android/server/audio/AudioDeviceBroker$1;

    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"  # Landroid/os/Message;

    .line 768
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_440

    .line 969
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

    goto/16 :goto_424

    .line 861
    :pswitch_1f  #0x1e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_24
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3d

    .line 863
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->scoClientDied(Ljava/lang/Object;)V

    .line 864
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3a

    .line 865
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3d

    .line 866
    goto/16 :goto_424

    .line 864
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_3c
    throw v2

    .line 865
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1

    .line 953
    :pswitch_40  #0x1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 954
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
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

    .line 959
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

    .line 961
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 954
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 962
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 963
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

    .line 966
    monitor-exit v1

    .line 967
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    goto/16 :goto_424

    .line 966
    .restart local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :catchall_b0
    move-exception v2

    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_b0

    throw v2

    .line 940
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :pswitch_b3  #0x1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    .line 942
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
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

    .line 944
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

    .line 946
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 942
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 947
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 948
    :try_start_104
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mMusicDevice:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 950
    monitor-exit v1

    .line 951
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    goto/16 :goto_424

    .line 950
    .restart local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    :catchall_118
    move-exception v2

    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_118

    throw v2

    .line 924
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    :pswitch_11b  #0x1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 925
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
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

    .line 930
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

    .line 932
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 925
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 933
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 934
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

    .line 937
    monitor-exit v1

    .line 938
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    goto/16 :goto_424

    .line 937
    .restart local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :catchall_18d
    move-exception v2

    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_176 .. :try_end_18f} :catchall_18d

    throw v2

    .line 917
    .end local v0  # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :pswitch_190  #0x1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_195
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_19c
    .catchall {:try_start_195 .. :try_end_19c} :catchall_1b0

    .line 919
    :try_start_19c
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 920
    monitor-exit v1
    :try_end_1aa
    .catchall {:try_start_19c .. :try_end_1aa} :catchall_1ad

    .line 921
    :try_start_1aa
    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1b0

    .line 922
    goto/16 :goto_424

    .line 920
    :catchall_1ad
    move-exception v2

    :try_start_1ae
    monitor-exit v1
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1ad

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_1af
    throw v2

    .line 921
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_1b0
    move-exception v1

    monitor-exit v0
    :try_end_1b2
    .catchall {:try_start_1af .. :try_end_1b2} :catchall_1b0

    throw v1

    .line 912
    :pswitch_1b3  #0x19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 913
    :try_start_1ba
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 914
    monitor-exit v0

    .line 915
    goto/16 :goto_424

    .line 914
    :catchall_1ca
    move-exception v1

    monitor-exit v0
    :try_end_1cc
    .catchall {:try_start_1ba .. :try_end_1cc} :catchall_1ca

    throw v1

    .line 907
    :pswitch_1cd  #0x18
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 908
    :try_start_1d4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 909
    monitor-exit v0

    .line 910
    goto/16 :goto_424

    .line 909
    :catchall_1e4
    move-exception v1

    monitor-exit v0
    :try_end_1e6
    .catchall {:try_start_1d4 .. :try_end_1e6} :catchall_1e4

    throw v1

    .line 902
    :pswitch_1e7  #0x17
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 903
    :try_start_1ee
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 904
    monitor-exit v0

    .line 905
    goto/16 :goto_424

    .line 904
    :catchall_1fe
    move-exception v1

    monitor-exit v0
    :try_end_200
    .catchall {:try_start_1ee .. :try_end_200} :catchall_1fe

    throw v1

    .line 895
    :pswitch_201  #0x16
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_206
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_20d
    .catchall {:try_start_206 .. :try_end_20d} :catchall_21d

    .line 897
    :try_start_20d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    .line 898
    monitor-exit v1
    :try_end_217
    .catchall {:try_start_20d .. :try_end_217} :catchall_21a

    .line 899
    :try_start_217
    monitor-exit v0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_21d

    .line 900
    goto/16 :goto_424

    .line 898
    :catchall_21a
    move-exception v2

    :try_start_21b
    monitor-exit v1
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_21a

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_21c
    throw v2

    .line 899
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_21d
    move-exception v1

    monitor-exit v0
    :try_end_21f
    .catchall {:try_start_21c .. :try_end_21f} :catchall_21d

    throw v1

    .line 890
    :pswitch_220  #0x15
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 891
    :try_start_227
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    .line 892
    monitor-exit v0

    .line 893
    goto/16 :goto_424

    .line 892
    :catchall_233
    move-exception v1

    monitor-exit v0
    :try_end_235
    .catchall {:try_start_227 .. :try_end_235} :catchall_233

    throw v1

    .line 885
    :pswitch_236  #0x14
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 886
    :try_start_23d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    .line 887
    monitor-exit v0

    .line 888
    goto/16 :goto_424

    .line 887
    :catchall_249
    move-exception v1

    monitor-exit v0
    :try_end_24b
    .catchall {:try_start_23d .. :try_end_24b} :catchall_249

    throw v1

    .line 880
    :pswitch_24c  #0x13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 881
    :try_start_253
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    .line 882
    monitor-exit v0

    .line 883
    goto/16 :goto_424

    .line 882
    :catchall_25f
    move-exception v1

    monitor-exit v0
    :try_end_261
    .catchall {:try_start_253 .. :try_end_261} :catchall_25f

    throw v1

    .line 873
    :pswitch_262  #0x12
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 874
    :try_start_269
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 877
    monitor-exit v0

    .line 878
    goto/16 :goto_424

    .line 877
    :catchall_27a
    move-exception v1

    monitor-exit v0
    :try_end_27c
    .catchall {:try_start_269 .. :try_end_27c} :catchall_27a

    throw v1

    .line 868
    :pswitch_27d  #0x11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 869
    :try_start_284
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 870
    monitor-exit v0

    .line 871
    goto/16 :goto_424

    .line 870
    :catchall_290
    move-exception v1

    monitor-exit v0
    :try_end_292
    .catchall {:try_start_284 .. :try_end_292} :catchall_290

    throw v1

    .line 854
    :pswitch_293  #0x10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_298
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_29f
    .catchall {:try_start_298 .. :try_end_29f} :catchall_2b1

    .line 856
    :try_start_29f
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothSco(I)V

    .line 857
    monitor-exit v1
    :try_end_2ab
    .catchall {:try_start_29f .. :try_end_2ab} :catchall_2ae

    .line 858
    :try_start_2ab
    monitor-exit v0
    :try_end_2ac
    .catchall {:try_start_2ab .. :try_end_2ac} :catchall_2b1

    .line 859
    goto/16 :goto_424

    .line 857
    :catchall_2ae
    move-exception v2

    :try_start_2af
    monitor-exit v1
    :try_end_2b0
    .catchall {:try_start_2af .. :try_end_2b0} :catchall_2ae

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_2b0
    throw v2

    .line 858
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_2b1
    move-exception v1

    monitor-exit v0
    :try_end_2b3
    .catchall {:try_start_2b0 .. :try_end_2b3} :catchall_2b1

    throw v1

    .line 849
    :pswitch_2b4  #0xf
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 850
    :try_start_2bb
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 851
    monitor-exit v0

    .line 852
    goto/16 :goto_424

    .line 851
    :catchall_2c9
    move-exception v1

    monitor-exit v0
    :try_end_2cb
    .catchall {:try_start_2bb .. :try_end_2cb} :catchall_2c9

    throw v1

    .line 844
    :pswitch_2cc  #0xe
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 845
    :try_start_2d3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(II)V

    .line 846
    monitor-exit v0

    .line 847
    goto/16 :goto_424

    .line 846
    :catchall_2e3
    move-exception v1

    monitor-exit v0
    :try_end_2e5
    .catchall {:try_start_2d3 .. :try_end_2e5} :catchall_2e3

    throw v1

    .line 791
    :pswitch_2e6  #0xd
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 792
    :try_start_2ed
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 793
    monitor-exit v0

    .line 794
    goto/16 :goto_424

    .line 793
    :catchall_2f9
    move-exception v1

    monitor-exit v0
    :try_end_2fb
    .catchall {:try_start_2ed .. :try_end_2fb} :catchall_2f9

    throw v1

    .line 840
    :pswitch_2fc  #0xc
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$700(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 842
    goto/16 :goto_424

    .line 829
    :pswitch_305  #0xb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 830
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 831
    :try_start_310
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 832
    .local v2, "a2dpCodec":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v5, -0x1

    invoke-direct {v4, v0, v5, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 835
    monitor-exit v1

    .line 836
    goto/16 :goto_424

    .line 835
    .end local v2  # "a2dpCodec":I
    :catchall_32d
    move-exception v2

    monitor-exit v1
    :try_end_32f
    .catchall {:try_start_310 .. :try_end_32f} :catchall_32d

    throw v2

    .line 823
    .end local v0  # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :pswitch_330  #0xa
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 824
    :try_start_337
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 825
    monitor-exit v0

    .line 826
    goto/16 :goto_424

    .line 825
    :catchall_349
    move-exception v1

    monitor-exit v0
    :try_end_34b
    .catchall {:try_start_337 .. :try_end_34b} :catchall_349

    throw v1

    .line 815
    :pswitch_34c  #0x9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_351
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_358
    .catchall {:try_start_351 .. :try_end_358} :catchall_368

    .line 817
    :try_start_358
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 818
    monitor-exit v1
    :try_end_362
    .catchall {:try_start_358 .. :try_end_362} :catchall_365

    .line 819
    :try_start_362
    monitor-exit v0
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_368

    .line 820
    goto/16 :goto_424

    .line 818
    :catchall_365
    move-exception v2

    :try_start_366
    monitor-exit v1
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_365

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_367
    throw v2

    .line 819
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_368
    move-exception v1

    monitor-exit v0
    :try_end_36a
    .catchall {:try_start_367 .. :try_end_36a} :catchall_368

    throw v1

    .line 808
    :pswitch_36b  #0x8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 809
    :try_start_372
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 811
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v4

    .line 809
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 812
    monitor-exit v0

    .line 813
    goto/16 :goto_424

    .line 812
    :catchall_38e
    move-exception v1

    monitor-exit v0
    :try_end_390
    .catchall {:try_start_372 .. :try_end_390} :catchall_38e

    throw v1

    .line 802
    :pswitch_391  #0x7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 803
    :try_start_398
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 805
    monitor-exit v0

    .line 806
    goto/16 :goto_424

    .line 805
    :catchall_3aa
    move-exception v1

    monitor-exit v0
    :try_end_3ac
    .catchall {:try_start_398 .. :try_end_3ac} :catchall_3aa

    throw v1

    .line 796
    :pswitch_3ad  #0x6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 797
    :try_start_3b4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 799
    monitor-exit v0

    .line 800
    goto :goto_424

    .line 799
    :catchall_3c5
    move-exception v1

    monitor-exit v0
    :try_end_3c7
    .catchall {:try_start_3b4 .. :try_end_3c7} :catchall_3c5

    throw v1

    .line 788
    :pswitch_3c8  #0x4, 0x5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V

    .line 789
    goto :goto_424

    .line 782
    :pswitch_3d6  #0x3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 783
    :try_start_3dd
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 784
    monitor-exit v0

    .line 785
    goto :goto_424

    .line 784
    :catchall_3ea
    move-exception v1

    monitor-exit v0
    :try_end_3ec
    .catchall {:try_start_3dd .. :try_end_3ec} :catchall_3ea

    throw v1

    .line 776
    :pswitch_3ed  #0x2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 777
    :try_start_3f4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 779
    monitor-exit v0

    .line 780
    goto :goto_424

    .line 779
    :catchall_403
    move-exception v1

    monitor-exit v0
    :try_end_405
    .catchall {:try_start_3f4 .. :try_end_405} :catchall_403

    throw v1

    .line 770
    :pswitch_406  #0x1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 771
    :try_start_40d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 772
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 773
    monitor-exit v0

    .line 774
    goto :goto_424

    .line 773
    :catchall_421
    move-exception v1

    monitor-exit v0
    :try_end_423
    .catchall {:try_start_40d .. :try_end_423} :catchall_421

    throw v1

    .line 971
    :goto_424
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_43e

    .line 973
    :try_start_42c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$900(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_435
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_435} :catch_436

    .line 976
    goto :goto_43e

    .line 974
    :catch_436
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Exception releasing wakelock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_43e
    :goto_43e
    return-void

    nop

    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_406  #00000001
        :pswitch_3ed  #00000002
        :pswitch_3d6  #00000003
        :pswitch_3c8  #00000004
        :pswitch_3c8  #00000005
        :pswitch_3ad  #00000006
        :pswitch_391  #00000007
        :pswitch_36b  #00000008
        :pswitch_34c  #00000009
        :pswitch_330  #0000000a
        :pswitch_305  #0000000b
        :pswitch_2fc  #0000000c
        :pswitch_2e6  #0000000d
        :pswitch_2cc  #0000000e
        :pswitch_2b4  #0000000f
        :pswitch_293  #00000010
        :pswitch_27d  #00000011
        :pswitch_262  #00000012
        :pswitch_24c  #00000013
        :pswitch_236  #00000014
        :pswitch_220  #00000015
        :pswitch_201  #00000016
        :pswitch_1e7  #00000017
        :pswitch_1cd  #00000018
        :pswitch_1b3  #00000019
        :pswitch_190  #0000001a
        :pswitch_11b  #0000001b
        :pswitch_b3  #0000001c
        :pswitch_40  #0000001d
        :pswitch_1f  #0000001e
    .end packed-switch
.end method
