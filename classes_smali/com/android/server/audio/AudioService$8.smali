.class Lcom/android/server/audio/AudioService$8;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->MzModeReset_StartModeResetThread()V
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

    .line 9077
    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 9082
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11402(Z)Z

    .line 9084
    iget-object v1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9086
    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_281

    .line 9087
    const-string v1, "AS.AudioService"

    const-string v2, "[MODE_RESET] modeResetThread: ---- started!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9088
    iget-object v1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 9091
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    :goto_25
    const-wide/16 v3, 0x3e8

    :try_start_27
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 9095
    goto :goto_33

    .line 9092
    :catch_2b
    move-exception v1

    .line 9094
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "AS.AudioService"

    const-string v4, "[MODE_RESET] sleep interrupted !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9096
    .end local v1  # "e":Ljava/lang/InterruptedException;
    :goto_33
    iget-object v1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3e

    goto/16 :goto_271

    .line 9097
    :cond_3e
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 9098
    iget-object v1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)V

    .line 9099
    goto :goto_25

    .line 9102
    :cond_4a
    const/4 v1, 0x0

    .line 9103
    .local v1, "modeOwnerPid":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 9104
    :try_start_54
    iget-object v5, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 9105
    iget-object v5, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-static {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$11600(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v5

    move v1, v5

    .line 9107
    :cond_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_27e

    .line 9108
    const/4 v4, 0x3

    if-eqz v1, :cond_241

    .line 9109
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11700()I

    move-result v5

    if-lez v5, :cond_a4

    .line 9110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MODE_RESET] mModeResetCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11700()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", modeOwner <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    .line 9111
    invoke-static {v6, v1}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9110
    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9113
    :cond_a4
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11802(I)I

    .line 9115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsProcessAcitveWithPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9116
    .local v5, "IsProcessAcitveWithPid":Ljava/lang/String;
    if-eqz v5, :cond_222

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    goto/16 :goto_222

    .line 9121
    :cond_c8
    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 9122
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11708()I

    .line 9125
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11700()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_181

    .line 9126
    const/4 v4, 0x0

    .line 9127
    .local v4, "pid":I
    const/4 v6, 0x0

    .line 9128
    .local v6, "cb":Landroid/os/IBinder;
    const/4 v7, -0x1

    .line 9129
    .local v7, "mode":I
    iget-object v8, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 9131
    :try_start_e7
    iget-object v9, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f8

    .line 9132
    iget-object v9, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9134
    :cond_f8
    iget-object v9, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11b

    .line 9135
    iget-object v9, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 9136
    .local v9, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-static {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$11600(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v10

    move v4, v10

    .line 9137
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v10

    move-object v6, v10

    .line 9138
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v10

    move v7, v10

    .line 9140
    .end local v9  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_11b
    monitor-exit v8
    :try_end_11c
    .catchall {:try_start_e7 .. :try_end_11c} :catchall_17e

    .line 9141
    if-eqz v4, :cond_177

    .line 9142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MODE_RESET] using mode = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " instead, modeOwner <"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    .line 9143
    invoke-static {v8, v4}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9142
    const-string v8, "AS.AudioService"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9146
    const/4 v3, -0x1

    .line 9147
    .local v3, "newModeOwnerPid":I
    iget-object v8, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 9148
    :try_start_151
    iget-object v9, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10, v4}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v6, v4, v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    move v3, v9

    .line 9149
    monitor-exit v8
    :try_end_15f
    .catchall {:try_start_151 .. :try_end_15f} :catchall_174

    .line 9150
    if-eqz v3, :cond_171

    .line 9151
    const-string v8, "AS.AudioService"

    const-string v9, "[MODE_RESET] calling disconnectBluetoothSco()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9152
    iget-object v8, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectBluetoothSco(I)V

    .line 9154
    .end local v3  # "newModeOwnerPid":I
    :cond_171
    nop

    .line 9159
    .end local v4  # "pid":I
    .end local v6  # "cb":Landroid/os/IBinder;
    .end local v7  # "mode":I
    goto/16 :goto_221

    .line 9149
    .restart local v3  # "newModeOwnerPid":I
    .restart local v4  # "pid":I
    .restart local v6  # "cb":Landroid/os/IBinder;
    .restart local v7  # "mode":I
    :catchall_174
    move-exception v0

    :try_start_175
    monitor-exit v8
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw v0

    .line 9156
    .end local v3  # "newModeOwnerPid":I
    :cond_177
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)V

    .line 9157
    goto/16 :goto_271

    .line 9140
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v8
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0

    .line 9162
    .end local v4  # "pid":I
    .end local v6  # "cb":Landroid/os/IBinder;
    .end local v7  # "mode":I
    :cond_181
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11700()I

    move-result v6

    if-le v6, v4, :cond_221

    .line 9163
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$12000()I

    move-result v4

    if-eq v4, v0, :cond_197

    .line 9164
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12002(I)I

    .line 9165
    const-string v4, "AS.AudioService"

    const-string v6, "[MODE_RESET] mModeResetState: STATE_NORMAL ==> STATE_PRE_RESET"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9167
    :cond_197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsHasAcitveMusicExceptPid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9168
    .local v4, "hasOtherAcitveMusic":Ljava/lang/String;
    if-eqz v4, :cond_1fd

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    goto :goto_1fd

    .line 9173
    :cond_1b7
    const-string/jumbo v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fc

    .line 9175
    :try_start_1c0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c9} :catch_1ed

    .line 9176
    :try_start_1c9
    iget-object v6, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 9177
    .local v6, "iter":Ljava/util/Iterator;
    :goto_1d1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e8

    .line 9178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 9179
    .local v7, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v8, v7, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9180
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 9181
    .end local v7  # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    goto :goto_1d1

    .line 9182
    .end local v6  # "iter":Ljava/util/Iterator;
    :cond_1e8
    monitor-exit v0

    .line 9185
    goto :goto_1ee

    .line 9182
    :catchall_1ea
    move-exception v6

    monitor-exit v0
    :try_end_1ec
    .catchall {:try_start_1c9 .. :try_end_1ec} :catchall_1ea

    .end local v1  # "modeOwnerPid":I
    .end local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v4  # "hasOtherAcitveMusic":Ljava/lang/String;
    .end local v5  # "IsProcessAcitveWithPid":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/audio/AudioService$8;
    :try_start_1ec
    throw v6
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1ed} :catch_1ed

    .line 9183
    .restart local v1  # "modeOwnerPid":I
    .restart local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v4  # "hasOtherAcitveMusic":Ljava/lang/String;
    .restart local v5  # "IsProcessAcitveWithPid":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/audio/AudioService$8;
    :catch_1ed
    move-exception v0

    .line 9186
    :goto_1ee
    const-string v0, "AS.AudioService"

    const-string v6, "[MODE_RESET] clear mSetModeDeathHandlers and than reset mode!"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9187
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)V

    .line 9188
    goto/16 :goto_271

    .line 9190
    .end local v4  # "hasOtherAcitveMusic":Ljava/lang/String;
    :cond_1fc
    goto :goto_221

    .line 9169
    .restart local v4  # "hasOtherAcitveMusic":Ljava/lang/String;
    :cond_1fd
    :goto_1fd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MODE_RESET] AudioSystem.getParameters(IsHasAcitveMusicExceptPid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") return invalide: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AS.AudioService"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9171
    goto :goto_271

    .line 9193
    .end local v4  # "hasOtherAcitveMusic":Ljava/lang/String;
    :cond_21c
    iget-object v3, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)V

    .line 9195
    .end local v5  # "IsProcessAcitveWithPid":Ljava/lang/String;
    :cond_221
    :goto_221
    goto :goto_27c

    .line 9117
    .restart local v5  # "IsProcessAcitveWithPid":Ljava/lang/String;
    :cond_222
    :goto_222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MODE_RESET] AudioSystem.getParameters(IsProcessAcitveWithPid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") return invalide: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AS.AudioService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9119
    goto :goto_271

    .line 9197
    .end local v5  # "IsProcessAcitveWithPid":Ljava/lang/String;
    :cond_241
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11808()I

    .line 9198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MODE_RESET] mSetModeDeathHandlers.isEmpty count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9199
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11800()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9198
    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9200
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$11800()I

    move-result v5

    if-le v5, v4, :cond_27c

    .line 9202
    const-string v0, "AS.AudioService"

    const-string v4, "[MODE_RESET] mSetModeDeathHandlers.isEmpty for 3 times, we should reset mode to MODE_NORMAL !"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9205
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)V

    .line 9206
    nop

    .line 9211
    .end local v1  # "modeOwnerPid":I
    :goto_271
    const-string v0, "AS.AudioService"

    const-string v1, "[MODE_RESET] modeResetThread: ---- exit!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9212
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11402(Z)Z

    .line 9213
    return-void

    .line 9209
    :cond_27c
    :goto_27c
    goto/16 :goto_25

    .line 9107
    .restart local v1  # "modeOwnerPid":I
    :catchall_27e
    move-exception v0

    :try_start_27f
    monitor-exit v4
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    throw v0

    .line 9086
    .end local v1  # "modeOwnerPid":I
    .end local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    :catchall_281
    move-exception v0

    :try_start_282
    monitor-exit v1
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    throw v0
.end method
