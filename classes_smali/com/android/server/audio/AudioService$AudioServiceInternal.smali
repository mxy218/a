.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/audio/AudioService;

    .line 7833
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "streamType"  # I
    .param p2, "direction"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "uid"  # I

    .line 7857
    if-eqz p2, :cond_22

    .line 7858
    sget-object v6, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7860
    const-string v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 7858
    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7862
    :cond_22
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7864
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"  # I
    .param p2, "direction"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "uid"  # I

    .line 7850
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7852
    return-void
.end method

.method public getRingerModeInternal()I
    .registers 2

    .line 7878
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "uids"  # Landroid/util/IntArray;

    .line 7902
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7903
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 7904
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$10402(Lcom/android/server/audio/AudioService;[I)[I

    goto :goto_58

    .line 7906
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 7907
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    .line 7908
    .local v1, "changed":Z
    :goto_2e
    if-nez v1, :cond_4d

    .line 7909
    nop

    .local v2, "i":I
    :goto_31
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4d

    .line 7910
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_4a

    .line 7911
    const/4 v1, 0x1

    .line 7912
    goto :goto_4d

    .line 7909
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 7916
    .end local v2  # "i":I
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_58

    .line 7917
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$10402(Lcom/android/server/audio/AudioService;[I)[I

    .line 7920
    .end local v1  # "changed":Z
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 7921
    monitor-exit v0

    .line 7922
    return-void

    .line 7921
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 4
    .param p1, "delegate"  # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 7836
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$10002(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 7837
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 7838
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7839
    :try_start_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Z

    .line 7840
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 7841
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_27

    .line 7840
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 7843
    :cond_27
    :goto_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 7883
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 7884
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 15
    .param p1, "streamType"  # I
    .param p2, "direction"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "uid"  # I

    .line 7870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_DEBUG] setStreamVolume: streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7873
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7874
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"  # Ljava/lang/String;

    .line 7888
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 7889
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 5

    .line 7893
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7894
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 7895
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;IZ)V

    .line 7897
    :cond_19
    monitor-exit v0

    .line 7898
    return-void

    .line 7897
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
