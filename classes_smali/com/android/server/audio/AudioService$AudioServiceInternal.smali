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

    .line 6770
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 14

    .line 6794
    if-eqz p2, :cond_22

    .line 6795
    sget-object v6, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6797
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

    .line 6795
    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6799
    :cond_22
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 6801
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13

    .line 6787
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 6789
    return-void
.end method

.method public getRingerModeInternal()I
    .registers 2

    .line 6811
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 8

    .line 6835
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6836
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 6837
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/audio/AudioService;->access$9502(Lcom/android/server/audio/AudioService;[I)[I

    goto :goto_5a

    .line 6839
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 6840
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v1, v4, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v3

    .line 6841
    :goto_2f
    if-nez v1, :cond_4f

    .line 6842
    nop

    :goto_32
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_4f

    .line 6843
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_4c

    .line 6844
    nop

    .line 6845
    move v1, v3

    goto :goto_4f

    .line 6842
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 6849
    :cond_4f
    :goto_4f
    if-eqz v1, :cond_5a

    .line 6850
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$9502(Lcom/android/server/audio/AudioService;[I)[I

    .line 6853
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)[I

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 6854
    monitor-exit v0

    .line 6855
    return-void

    .line 6854
    :catchall_65
    move-exception p1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 3

    .line 6773
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$9102(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 6774
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 6775
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6776
    :try_start_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)Z

    .line 6777
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 6778
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result p1

    const-string v0, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_27

    .line 6777
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 6780
    :cond_27
    :goto_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4

    .line 6816
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 6817
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13

    .line 6806
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 6807
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 3

    .line 6821
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 6822
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 5

    .line 6826
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6827
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6828
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;IZ)V

    .line 6830
    :cond_19
    monitor-exit v0

    .line 6831
    return-void

    .line 6830
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
