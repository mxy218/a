.class Lcom/android/server/audio/AudioService$6;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/audio/AudioService;

    .line 8873
    iput-object p1, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 15
    .param p1, "state"  # I
    .param p2, "incomingNumber"  # Ljava/lang/String;

    .line 8876
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getScene"

    invoke-virtual {v0, v3, v2}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "game"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8877
    .local v0, "isGameMode":Z
    iget-object v2, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 8878
    .local v2, "zenMode":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mz_drive_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    move v3, v4

    goto :goto_33

    :cond_32
    move v3, v1

    .line 8879
    .local v3, "isDriveMode":Z
    :goto_33
    const-string v5, ""

    .line 8880
    .local v5, "parameters":Ljava/lang/String;
    const/4 v6, 0x1

    .line 8881
    .local v6, "isMute":Z
    iget-object v7, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, v7, Lcom/android/server/audio/AudioService;->mOldCallState:I

    .line 8882
    .local v7, "oldCallState":I
    const/4 v8, 0x2

    if-eq p1, v4, :cond_84

    if-ne p1, v8, :cond_40

    goto :goto_84

    .line 8895
    :cond_40
    if-nez v7, :cond_45

    .line 8896
    const/4 v6, 0x0

    move v9, v6

    goto :goto_46

    .line 8895
    :cond_45
    move v9, v6

    .line 8898
    .end local v6  # "isMute":Z
    .local v9, "isMute":Z
    :goto_46
    iget-object v6, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    iput v1, v6, Lcom/android/server/audio/AudioService;->mOldCallState:I

    .line 8899
    const-string v5, "callAction=off"

    .line 8900
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService;->isBluetoothA2dpOn()Z

    move-result v6

    if-nez v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_5a
    move v1, v4

    .line 8901
    .local v1, "mBluetoothConnected":Z
    :cond_5b
    if-eqz v1, :cond_61

    .line 8902
    const-string v5, "callAction=off_bt"

    move-object v10, v5

    goto :goto_62

    .line 8901
    :cond_61
    move-object v10, v5

    .line 8906
    .end local v5  # "parameters":Ljava/lang/String;
    .local v10, "parameters":Ljava/lang/String;
    :goto_62
    iget-object v5, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 8907
    :try_start_69
    iget-object v5, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 8908
    iget-object v5, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 8909
    const-string v5, "AS.AudioService"

    const-string v6, "[SPEAKER_PHONE] mSpeakerphoneLock.notify"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8910
    monitor-exit v11

    move v6, v9

    goto :goto_ae

    :catchall_81
    move-exception v4

    monitor-exit v11
    :try_end_83
    .catchall {:try_start_69 .. :try_end_83} :catchall_81

    throw v4

    .line 8884
    .end local v1  # "mBluetoothConnected":Z
    .end local v9  # "isMute":Z
    .end local v10  # "parameters":Ljava/lang/String;
    .restart local v5  # "parameters":Ljava/lang/String;
    .restart local v6  # "isMute":Z
    :cond_84
    :goto_84
    if-ne p1, v4, :cond_a8

    if-nez v2, :cond_8c

    if-nez v0, :cond_8c

    if-eqz v3, :cond_a8

    .line 8885
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FLYME_MUTE_STRATEGY] onCallStateChanged state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  in DontDisturb mode or in game mode or drive mode, return"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AS.AudioService"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8886
    return-void

    .line 8888
    :cond_a8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    iput p1, v1, Lcom/android/server/audio/AudioService;->mOldCallState:I

    .line 8890
    const-string v10, "callAction=on_with_game_mode"

    .line 8913
    .end local v5  # "parameters":Ljava/lang/String;
    .restart local v10  # "parameters":Ljava/lang/String;
    :goto_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FLYME_MUTE_STRATEGY] onCallStateChanged state = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", parameterss = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", zenMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOldCallState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isGameMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDriveMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMute "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "AS.AudioService"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8917
    if-eqz v6, :cond_103

    if-ne v7, v4, :cond_100

    if-nez v2, :cond_fe

    if-nez v0, :cond_fe

    if-eqz v3, :cond_100

    :cond_fe
    if-ne p1, v8, :cond_103

    .line 8920
    :cond_100
    invoke-static {v10}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8921
    :cond_103
    return-void
.end method
