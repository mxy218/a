.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
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
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .registers 4

    .line 3235
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3233
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 3236
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 3237
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 3238
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 3241
    nop

    .line 3242
    nop

    .line 3243
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3244
    :try_start_b
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setMode() client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 3246
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    goto :goto_2e

    .line 3245
    :cond_2d
    move v1, v2

    .line 3248
    :goto_2e
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3249
    if-gez v3, :cond_41

    .line 3250
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "unregistered setMode() client died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 3252
    :cond_41
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    const-string v6, "AS.AudioService"

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v2

    .line 3254
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_5c

    .line 3257
    if-eq v2, v1, :cond_5b

    if-eqz v2, :cond_5b

    .line 3258
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectBluetoothSco(I)V

    .line 3260
    :cond_5b
    return-void

    .line 3254
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 3275
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 3271
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 3263
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .registers 2

    .line 3267
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 3268
    return-void
.end method
