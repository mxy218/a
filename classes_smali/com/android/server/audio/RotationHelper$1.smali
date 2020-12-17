.class Lcom/android/server/audio/RotationHelper$1;
.super Ljava/lang/Object;
.source "RotationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/audio/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 87
    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 88
    .local v0, "isActive":Z
    const/4 v1, 0x2

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$000()Lcom/android/server/audio/AudioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getDeviceForMusic()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    move v1, v4

    .line 89
    .local v1, "isOutDeviceSpeaker":Z
    :goto_17
    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    move v2, v3

    .line 90
    .local v2, "enable":Z
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$200()Z

    move-result v3

    if-eq v2, v3, :cond_4b

    .line 91
    invoke-static {v2}, Lcom/android/server/audio/RotationHelper;->access$202(Z)Z

    .line 92
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$300()V

    .line 93
    if-nez v2, :cond_33

    goto :goto_4b

    .line 96
    :cond_33
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$400()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 97
    :try_start_38
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$600()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/audio/RotationHelper;->access$502(I)I

    .line 98
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$500()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/audio/RotationHelper;->access$700(I)V

    .line 99
    monitor-exit v3

    goto :goto_4b

    :catchall_48
    move-exception v4

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_48

    throw v4

    .line 103
    :cond_4b
    :goto_4b
    const-wide/16 v3, 0x3e8

    :try_start_4d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51

    .line 107
    goto :goto_5d

    .line 104
    :catch_51
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
    const-string v4, "AudioService.RotationHelper"

    const-string/jumbo v5, "startMonitorMusicActiveThread: wait Exception!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0  # "isActive":Z
    .end local v1  # "isOutDeviceSpeaker":Z
    .end local v2  # "enable":Z
    .end local v3  # "e":Ljava/lang/InterruptedException;
    :goto_5d
    goto :goto_0
.end method
