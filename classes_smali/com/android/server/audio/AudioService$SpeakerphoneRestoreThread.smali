.class Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeakerphoneRestoreThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/audio/AudioService;

    .line 4091
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 4092
    const-string v0, "SpeakerphoneRestoreThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4093
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 4098
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4099
    :try_start_7
    const-string v1, "AS.AudioService"

    const-string v2, "[SPEAKER_PHONE] SpeakerphoneRestoreThread enter and wait"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_d8

    .line 4101
    :try_start_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_18
    .catchall {:try_start_e .. :try_end_17} :catchall_d8

    .line 4104
    goto :goto_20

    .line 4102
    :catch_18
    move-exception v1

    .line 4103
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_19
    const-string v2, "AS.AudioService"

    const-string v3, "[SPEAKER_PHONE]mSpeakerphoneLock Interrupted while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    .end local v1  # "e":Ljava/lang/InterruptedException;
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_d8

    .line 4106
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v1

    .line 4107
    .local v1, "preMode":I
    const/4 v0, -0x2

    .line 4108
    .local v0, "mode":I
    const/4 v2, 0x1

    .line 4109
    .local v2, "status":I
    const/16 v3, 0x78

    .line 4110
    .local v3, "count":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_30

    .line 4111
    const/16 v3, 0x46

    .line 4113
    :cond_30
    const/4 v5, 0x0

    if-nez v1, :cond_51

    .line 4115
    const/4 v2, 0x0

    .line 4116
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 4117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SPEAKER_PHONE] SpeakerphoneRestoreThread preMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 4120
    :cond_51
    const-wide/16 v6, 0xf

    :try_start_53
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    .line 4123
    goto :goto_58

    .line 4121
    :catch_57
    move-exception v6

    .line 4124
    :goto_58
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    .line 4125
    if-eq v1, v4, :cond_64

    if-ne v0, v1, :cond_68

    if-eqz v3, :cond_68

    :cond_64
    if-ne v1, v4, :cond_b4

    if-nez v3, :cond_b4

    .line 4127
    :cond_68
    const/4 v2, 0x0

    .line 4129
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v7, 0x0

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/audio/AudioService;->setSpeakerphoneOnExt(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 4130
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_86

    .line 4131
    const-string v6, "AS.AudioService"

    const-string v7, "[SPEAKER_PHONE] after setSpeakerphoneOnExt, mSpeakerphoneRestoreState 1 >> 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 4134
    :cond_86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPEAKER_PHONE] setSpeakerphoneOnExt  in SpeakerphoneRestoreThread, preMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    if-ne v0, v4, :cond_b4

    .line 4136
    invoke-static {v5}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 4137
    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 4140
    :cond_b4
    add-int/lit8 v3, v3, -0x1

    .line 4141
    if-gez v3, :cond_d4

    .line 4142
    const/4 v2, 0x0

    .line 4143
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 4144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SPEAKER_PHONE] wait mode change timeout ! mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :cond_d4
    :goto_d4
    if-nez v2, :cond_30

    .line 4148
    .end local v0  # "mode":I
    .end local v1  # "preMode":I
    .end local v2  # "status":I
    .end local v3  # "count":I
    goto/16 :goto_0

    .line 4105
    :catchall_d8
    move-exception v1

    :try_start_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v1
.end method
