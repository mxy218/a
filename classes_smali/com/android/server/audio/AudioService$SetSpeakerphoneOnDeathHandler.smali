.class Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSpeakerphoneOnDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mState:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .registers 3
    .param p2, "pid"  # I

    .line 4159
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4156
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPackageName:Ljava/lang/String;

    .line 4157
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mState:Z

    .line 4160
    iput p2, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPid:I

    .line 4161
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 4164
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4165
    :try_start_7
    const-string v1, "AS.AudioService"

    const-string v2, "[SPEAKER_PHONE]SetSpeakerphoneOn() client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4167
    .local v1, "index":I
    if-gez v1, :cond_22

    .line 4168
    const-string v2, "AS.AudioService"

    const-string v3, "[SPEAKER_PHONE]unregistered SetSpeakerphoneOn() client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 4171
    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_3c

    .line 4173
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_32
    .catchall {:try_start_2b .. :try_end_31} :catchall_3c

    .line 4176
    goto :goto_3a

    .line 4174
    :catch_32
    move-exception v2

    .line 4175
    .local v2, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v3, "AS.AudioService"

    const-string v4, "[SPEAKER_PHONE] SetSpeakerphoneOnDeathHandler::binderDied() death link not exsit !"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    .end local v1  # "index":I
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_3a
    monitor-exit v0

    .line 4179
    return-void

    .line 4178
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public dump()V
    .registers 3

    .line 4210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] mPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 4206
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 4198
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 4182
    iget v0, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPid:I

    return v0
.end method

.method public getSpeakerphoneState()Z
    .registers 2

    .line 4190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mState:Z

    return v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 4202
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mCb:Landroid/os/IBinder;

    .line 4203
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 4194
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mPackageName:Ljava/lang/String;

    .line 4195
    return-void
.end method

.method public setSpeakerphoneState(Z)V
    .registers 2
    .param p1, "on"  # Z

    .line 4186
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->mState:Z

    .line 4187
    return-void
.end method
