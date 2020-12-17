.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 5998
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/audio/AudioService;
    .param p2, "x1"  # Lcom/android/server/audio/AudioService$1;

    .line 5998
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"  # Landroid/media/MediaPlayer;

    .line 5998
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"  # Landroid/media/MediaPlayer;

    .line 6311
    if-eqz p1, :cond_20

    .line 6313
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 6314
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 6317
    goto :goto_20

    .line 6315
    :catch_9
    move-exception v0

    .line 6316
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6319
    .end local v0  # "ex":Ljava/lang/IllegalStateException;
    :cond_20
    :goto_20
    return-void
.end method

.method private getSoundEffectFilePath(I)Ljava/lang/String;
    .registers 7
    .param p1, "effectType"  # I

    .line 6055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6056
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6057
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_62

    .line 6058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6059
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    aget v3, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6061
    :cond_62
    return-object v0
.end method

.method private onLoadSoundEffects()Z
    .registers 17

    .line 6067
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6068
    :try_start_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 6069
    const-string v0, "AS.AudioService"

    const-string/jumbo v4, "onLoadSoundEffects() called before boot complete"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    monitor-exit v2

    return v3

    .line 6073
    :cond_1c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    .line 6074
    monitor-exit v2

    return v4

    .line 6077
    :cond_27
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)V

    .line 6079
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 6080
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v8, 0xd

    .line 6082
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 6083
    invoke-virtual {v7, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 6084
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 6081
    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    .line 6085
    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    .line 6079
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6086
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 6087
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v6, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$4802(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6088
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 6089
    const/4 v0, 0x3

    .line 6090
    .local v0, "attempts":I
    :goto_72
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_213

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_96

    add-int/lit8 v6, v0, -0x1

    .end local v0  # "attempts":I
    .local v6, "attempts":I
    if-lez v0, :cond_95

    .line 6093
    :try_start_80
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_89} :catch_8a
    .catchall {:try_start_80 .. :try_end_89} :catchall_213

    .line 6096
    goto :goto_93

    .line 6094
    :catch_8a
    move-exception v0

    .line 6095
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8b
    const-string v7, "AS.AudioService"

    const-string v8, "Interrupted while waiting sound pool listener thread."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6096
    nop

    .line 6090
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_93
    move v0, v6

    goto :goto_72

    :cond_95
    move v0, v6

    .line 6099
    .end local v6  # "attempts":I
    .local v0, "attempts":I
    :cond_96
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6

    if-nez v6, :cond_d1

    .line 6100
    const-string v4, "AS.AudioService"

    const-string/jumbo v6, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6101
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_bc

    .line 6102
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 6103
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6105
    :cond_bc
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$4802(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6106
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 6107
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6108
    monitor-exit v2

    return v3

    .line 6116
    :cond_d1
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 6117
    .local v6, "poolId":[I
    move v9, v3

    .local v9, "fileIdx":I
    :goto_dc
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, -0x1

    if-ge v9, v10, :cond_ec

    .line 6118
    aput v11, v6, v9

    .line 6117
    add-int/lit8 v9, v9, 0x1

    goto :goto_dc

    .line 6126
    .end local v9  # "fileIdx":I
    :cond_ec
    const/4 v9, 0x0

    .line 6127
    .local v9, "numSamples":I
    const/4 v10, 0x0

    .local v10, "effect":I
    :goto_ee
    const/16 v12, 0xb

    if-ge v10, v12, :cond_172

    .line 6129
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v4

    if-nez v12, :cond_ff

    .line 6130
    goto :goto_16d

    .line 6133
    :cond_ff
    const/16 v12, 0xa

    if-ne v10, v12, :cond_109

    .line 6134
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)V

    .line 6135
    goto :goto_16d

    .line 6138
    :cond_109
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v3

    aget v12, v6, v12

    if-ne v12, v11, :cond_157

    .line 6139
    invoke-direct {v1, v10}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v12

    .line 6140
    .local v12, "filePath":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13, v12, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    .line 6141
    .local v13, "sampleId":I
    if-gtz v13, :cond_13e

    .line 6142
    const-string v14, "AS.AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Soundpool could not load file: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 6144
    :cond_13e
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    aput v13, v5, v4

    .line 6145
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    aget v5, v5, v3

    aput v13, v6, v5

    .line 6146
    add-int/lit8 v9, v9, 0x1

    .line 6148
    .end local v12  # "filePath":Ljava/lang/String;
    .end local v13  # "sampleId":I
    :goto_156
    goto :goto_16d

    .line 6149
    :cond_157
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6150
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v3

    aget v12, v6, v12

    aput v12, v5, v4

    .line 6127
    :goto_16d
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_ee

    .line 6154
    .end local v10  # "effect":I
    :cond_172
    if-lez v9, :cond_1a7

    .line 6155
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_17d
    .catchall {:try_start_8b .. :try_end_17d} :catchall_213

    .line 6157
    const/4 v0, 0x3

    .line 6158
    const/4 v5, 0x1

    .line 6159
    .local v5, "status":I
    :goto_17f
    if-ne v5, v4, :cond_1a8

    add-int/lit8 v10, v0, -0x1

    .end local v0  # "attempts":I
    .local v10, "attempts":I
    if-lez v0, :cond_1a5

    .line 6161
    :try_start_185
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 6162
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I

    move-result v0
    :try_end_198
    .catch Ljava/lang/InterruptedException; {:try_start_185 .. :try_end_198} :catch_19b
    .catchall {:try_start_185 .. :try_end_198} :catchall_213

    move v5, v0

    .line 6165
    move v0, v10

    goto :goto_17f

    .line 6163
    :catch_19b
    move-exception v0

    .line 6164
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_19c
    const-string v13, "AS.AudioService"

    const-string v14, "Interrupted while waiting sound pool callback."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    move v0, v10

    .end local v0  # "e":Ljava/lang/InterruptedException;
    goto :goto_17f

    .line 6159
    :cond_1a5
    move v0, v10

    goto :goto_1a8

    .line 6168
    .end local v5  # "status":I
    .end local v10  # "attempts":I
    .local v0, "attempts":I
    :cond_1a7
    move v5, v11

    .line 6171
    .restart local v5  # "status":I
    :cond_1a8
    :goto_1a8
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    if-eqz v7, :cond_1bf

    .line 6172
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 6173
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6175
    :cond_1bf
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$4802(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6176
    if-eqz v5, :cond_20e

    .line 6177
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onLoadSoundEffects(), Error "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " while loading samples"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    const/4 v7, 0x0

    .local v7, "effect":I
    :goto_1e4
    if-ge v7, v12, :cond_1ff

    .line 6180
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aget v8, v8, v4

    if-lez v8, :cond_1fc

    .line 6181
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aput v11, v8, v4

    .line 6179
    :cond_1fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e4

    .line 6185
    .end local v7  # "effect":I
    :cond_1ff
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/SoundPool;->release()V

    .line 6186
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6188
    .end local v0  # "attempts":I
    .end local v6  # "poolId":[I
    .end local v9  # "numSamples":I
    :cond_20e
    monitor-exit v2

    .line 6189
    if-nez v5, :cond_212

    move v3, v4

    :cond_212
    return v3

    .line 6188
    .end local v5  # "status":I
    :catchall_213
    move-exception v0

    monitor-exit v2
    :try_end_215
    .catchall {:try_start_19c .. :try_end_215} :catchall_213

    throw v0
.end method

.method private onMuteChangedAffectMusic(I)V
    .registers 8
    .param p1, "value"  # I

    .line 6353
    const/4 v0, 0x3

    .line 6354
    .local v0, "streamType":I
    const-string/jumbo v1, "last_mute_"

    .line 6355
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    .line 6356
    .local v4, "mute":Z
    :goto_b
    if-eqz v4, :cond_19

    .line 6357
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesForMusic(Ljava/lang/String;ZZ)V

    goto :goto_24

    .line 6359
    :cond_19
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesForMusic(Ljava/lang/String;ZZ)V

    .line 6361
    :goto_24
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 6362
    return-void
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 4
    .param p1, "apc"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"  # I

    .line 6330
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 6333
    goto :goto_5

    .line 6331
    :catch_4
    move-exception v0

    .line 6334
    :goto_5
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 6322
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6325
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 20
    .param p1, "effectType"  # I
    .param p2, "volume"  # I

    .line 6229
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 6231
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 6234
    const/16 v0, 0xa

    const/high16 v5, 0x41a00000  # 20.0f

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    const/4 v8, 0x1

    if-ne v2, v0, :cond_cc

    .line 6235
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 6236
    const-string v0, "AS.AudioService"

    const-string/jumbo v5, "onPlaySoundEffect: mMainBackTouchSoundPool is null !!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    monitor-exit v4

    return-void

    .line 6239
    :cond_2b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, v2

    aget v0, v0, v8

    if-gtz v0, :cond_41

    .line 6240
    const-string v0, "AS.AudioService"

    const-string/jumbo v5, "onPlaySoundEffect: AudioManage.FX_MAIN_BACK_TOUCH load failed !!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    monitor-exit v4

    return-void

    .line 6244
    :cond_41
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v8, :cond_52

    goto :goto_c2

    .line 6249
    :cond_52
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "homekey_volume_level"

    .line 6250
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5200()[F

    move-result-object v10

    array-length v10, v10

    div-int/lit8 v10, v10, 0x2

    .line 6249
    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6251
    .local v0, "soundLevel":I
    add-int/lit8 v9, v0, 0x2

    div-int/lit8 v9, v9, 0x3

    .line 6252
    .local v9, "level":I
    const-string v10, "AS.AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPlaySoundEffect: play main back key sound level: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    if-lez v9, :cond_c0

    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5200()[F

    move-result-object v10

    array-length v10, v10

    if-gt v9, v10, :cond_c0

    .line 6254
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5200()[F

    move-result-object v10

    add-int/lit8 v11, v9, -0x1

    aget v10, v10, v11

    div-float/2addr v10, v5

    float-to-double v10, v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 6256
    .local v5, "volFloat":F
    const/high16 v6, 0x40000000  # 2.0f

    .line 6258
    .local v6, "priority":I
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v7

    aget-object v7, v7, v2

    aget v11, v7, v8

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000  # 1.0f

    move v12, v5

    move v13, v5

    move v14, v6

    invoke-virtual/range {v10 .. v16}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 6261
    .end local v5  # "volFloat":F
    .end local v6  # "priority":I
    :cond_c0
    monitor-exit v4

    return-void

    .line 6245
    .end local v0  # "soundLevel":I
    .end local v9  # "level":I
    :cond_c2
    :goto_c2
    const-string v0, "AS.AudioService"

    const-string/jumbo v5, "onPlaySoundEffect: ringmode no normal, so do not play home touch effect!"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6246
    monitor-exit v4

    return-void

    .line 6265
    :cond_cc
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_d6

    .line 6266
    monitor-exit v4

    return-void

    .line 6270
    :cond_d6
    if-gez v3, :cond_e6

    .line 6271
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v9, v0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    move v5, v0

    .local v0, "volFloat":F
    goto :goto_eb

    .line 6273
    .end local v0  # "volFloat":F
    :cond_e6
    int-to-float v0, v3

    const/high16 v5, 0x447a0000  # 1000.0f

    div-float/2addr v0, v5

    move v5, v0

    .line 6276
    .restart local v5  # "volFloat":F
    :goto_eb
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, v2

    aget v0, v0, v8

    if-lez v0, :cond_111

    .line 6277
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, v2

    aget v10, v0, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000  # 1.0f

    move v11, v5

    move v12, v5

    invoke-virtual/range {v9 .. v15}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_184

    .line 6280
    :cond_111
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_116
    .catchall {:try_start_d .. :try_end_116} :catchall_186

    move-object v6, v0

    .line 6282
    .local v6, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_117
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 6283
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 6284
    invoke-virtual {v6, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6285
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 6286
    invoke-virtual {v6, v5}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 6287
    new-instance v7, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6292
    new-instance v7, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6298
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_13a} :catch_16c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_117 .. :try_end_13a} :catch_153
    .catch Ljava/lang/IllegalStateException; {:try_start_117 .. :try_end_13a} :catch_13b
    .catchall {:try_start_117 .. :try_end_13a} :catchall_186

    .line 6305
    .end local v0  # "filePath":Ljava/lang/String;
    goto :goto_184

    .line 6303
    :catch_13b
    move-exception v0

    .line 6304
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_13c
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaPlayer IllegalStateException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    .line 6301
    .end local v0  # "ex":Ljava/lang/IllegalStateException;
    :catch_153
    move-exception v0

    .line 6302
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    nop

    .end local v0  # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_184

    .line 6299
    :catch_16c
    move-exception v0

    .line 6300
    .local v0, "ex":Ljava/io/IOException;
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaPlayer IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    nop

    .line 6307
    .end local v0  # "ex":Ljava/io/IOException;
    .end local v5  # "volFloat":F
    .end local v6  # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_184
    monitor-exit v4

    .line 6308
    return-void

    .line 6307
    :catchall_186
    move-exception v0

    monitor-exit v4
    :try_end_188
    .catchall {:try_start_13c .. :try_end_188} :catchall_186

    throw v0
.end method

.method private onRingerModeChangedAffectMusic(I)V
    .registers 7
    .param p1, "ringerMode"  # I

    .line 6338
    const/4 v0, 0x3

    .line 6339
    .local v0, "streamType":I
    const-string/jumbo v1, "last_"

    .line 6340
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GJ_DEBUG] onRingerModeChangedAffectMusic: ringerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6341
    const/4 v2, 0x1

    if-eqz p1, :cond_30

    if-ne p1, v2, :cond_20

    goto :goto_30

    .line 6343
    :cond_20
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3b

    .line 6344
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesForMusic(Ljava/lang/String;ZZ)V

    goto :goto_3b

    .line 6342
    :cond_30
    :goto_30
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v1, v2, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesForMusic(Ljava/lang/String;ZZ)V

    .line 6347
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setMusicVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 6349
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-static {v2, v3, p1}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6350
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-static {v2, v3, p1}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6351
    return-void
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .line 6198
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6199
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_11

    .line 6200
    monitor-exit v0

    return-void

    .line 6203
    :cond_11
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 6204
    .local v1, "poolId":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "fileIdx":I
    :goto_1d
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 6205
    aput v2, v1, v3

    .line 6204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 6208
    .end local v3  # "fileIdx":I
    :cond_2c
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_2d
    const/16 v4, 0xb

    if-ge v3, v4, :cond_7f

    .line 6209
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3f

    .line 6210
    goto :goto_7c

    .line 6213
    :cond_3f
    const/16 v4, 0xa

    if-ne v3, v4, :cond_44

    .line 6214
    goto :goto_7c

    .line 6217
    :cond_44
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_7c

    .line 6218
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 6219
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 6220
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    .line 6208
    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 6223
    .end local v3  # "effect":I
    :cond_7f
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 6224
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6225
    nop

    .end local v1  # "poolId":[I
    monitor-exit v0

    .line 6226
    return-void

    .line 6225
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_91

    throw v1
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"  # I

    .line 6048
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6049
    return-void

    .line 6051
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6052
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 7
    .param p1, "streamState"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"  # I

    .line 6033
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6034
    return-void

    .line 6036
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 6037
    return-void

    .line 6039
    :cond_19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6040
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 6041
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 6042
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 6040
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6045
    :cond_35
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6003
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6006
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 6007
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_29

    .line 6008
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 6009
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 6010
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6007
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 6013
    .end local v1  # "streamType":I
    :cond_29
    return-void
.end method

.method private setMusicVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6019
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyMusicVolumes()V

    .line 6022
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 6023
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_29

    .line 6024
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 6025
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 6026
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6023
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 6029
    .end local v1  # "streamType":I
    :cond_29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 6367
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1ab

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_197

    const/4 v2, 0x4

    if-eq v0, v2, :cond_191

    const/4 v2, 0x5

    if-eq v0, v2, :cond_189

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_16e

    const/16 v2, 0x8

    if-eq v0, v2, :cond_13f

    const/16 v2, 0x32

    if-eq v0, v2, :cond_133

    const/16 v2, 0x64

    if-eq v0, v2, :cond_117

    const/4 v2, -0x2

    packed-switch v0, :pswitch_data_1b8

    packed-switch v0, :pswitch_data_1e6

    goto/16 :goto_1b7

    .line 6517
    :pswitch_29  #0x2a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6518
    goto/16 :goto_1b7

    .line 6514
    :pswitch_3a  #0x29
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onMuteChangedAffectMusic(I)V

    .line 6515
    goto/16 :goto_1b7

    .line 6511
    :pswitch_41  #0x28
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onRingerModeChangedAffectMusic(I)V

    .line 6512
    goto/16 :goto_1b7

    .line 6464
    :pswitch_48  #0x1e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;I)V

    .line 6465
    goto/16 :goto_1b7

    .line 6507
    :pswitch_51  #0x1d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 6508
    goto/16 :goto_1b7

    .line 6503
    :pswitch_5c  #0x1c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 6504
    goto/16 :goto_1b7

    .line 6499
    :pswitch_69  #0x1b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)V

    .line 6500
    goto/16 :goto_1b7

    .line 6495
    :pswitch_70  #0x1a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 6496
    goto/16 :goto_1b7

    .line 6491
    :pswitch_7b  #0x19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)V

    .line 6492
    goto/16 :goto_1b7

    .line 6487
    :pswitch_82  #0x18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 6488
    goto/16 :goto_1b7

    .line 6392
    :pswitch_8d  #0x17
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_94

    goto :goto_95

    :cond_94
    move v1, v3

    :goto_95
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;Z)V

    .line 6393
    goto/16 :goto_1b7

    .line 6483
    :pswitch_9a  #0x16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 6484
    goto/16 :goto_1b7

    .line 6460
    :pswitch_a5  #0x15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;I)V

    .line 6461
    goto/16 :goto_1b7

    .line 6456
    :pswitch_ae  #0x14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 6457
    goto/16 :goto_1b7

    .line 6479
    :pswitch_b5  #0x13
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6480
    goto/16 :goto_1b7

    .line 6475
    :pswitch_c2  #0x12
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;II)V

    .line 6476
    goto/16 :goto_1b7

    .line 6468
    :pswitch_cd  #0x11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6469
    .local v0, "musicActiveMs":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6472
    goto/16 :goto_1b7

    .line 6452
    .end local v0  # "musicActiveMs":I
    :pswitch_dd  #0x10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 6453
    goto/16 :goto_1b7

    .line 6396
    :pswitch_e4  #0xf
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    .line 6397
    goto/16 :goto_1b7

    .line 6448
    :pswitch_e9  #0xe
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 6449
    goto/16 :goto_1b7

    .line 6444
    :pswitch_f0  #0xc, 0xd
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    if-ne v2, v4, :cond_f9

    goto :goto_fa

    :cond_f9
    move v1, v3

    :goto_fa
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 6446
    goto/16 :goto_1b7

    .line 6439
    :pswitch_103  #0xb
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6440
    goto/16 :goto_1b7

    .line 6374
    :pswitch_10e  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 6375
    goto/16 :goto_1b7

    .line 6433
    :cond_117
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_122

    goto :goto_123

    :cond_122
    move v1, v3

    :goto_123
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 6435
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6436
    goto/16 :goto_1b7

    .line 6522
    :cond_133
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_138

    goto :goto_139

    :cond_138
    move v1, v3

    :goto_139
    move v0, v1

    .line 6523
    .local v0, "isOff":Z
    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->updateByScreenStateOff(Z)V

    goto/16 :goto_1b7

    .line 6418
    .end local v0  # "isOff":Z
    :cond_13f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6419
    .local v0, "eventSource":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6420
    .local v2, "useCase":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 6421
    .local v3, "config":I
    if-ne v2, v1, :cond_160

    .line 6422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AS.AudioService"

    invoke-static {v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6424
    goto :goto_1b7

    .line 6426
    :cond_160
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6428
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6430
    .end local v0  # "eventSource":Ljava/lang/String;
    .end local v2  # "useCase":I
    .end local v3  # "config":I
    goto :goto_1b7

    .line 6402
    :cond_16e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v0

    .line 6403
    .local v0, "loaded":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1b7

    .line 6404
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 6405
    .local v1, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v1

    .line 6406
    if-eqz v0, :cond_17e

    goto :goto_17f

    :cond_17e
    const/4 v3, -0x1

    :goto_17f
    :try_start_17f
    iput v3, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 6407
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6408
    monitor-exit v1

    .line 6409
    .end local v1  # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    goto :goto_1b7

    .line 6408
    .restart local v1  # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catchall_186
    move-exception v2

    monitor-exit v1
    :try_end_188
    .catchall {:try_start_17f .. :try_end_188} :catchall_186

    throw v2

    .line 6413
    .end local v0  # "loaded":Z
    .end local v1  # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :cond_189
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    .line 6414
    goto :goto_1b7

    .line 6388
    :cond_191
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 6389
    goto :goto_1b7

    .line 6384
    :cond_197
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 6385
    goto :goto_1b7

    .line 6378
    :cond_1a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6379
    goto :goto_1b7

    .line 6370
    :cond_1ab
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6371
    nop

    .line 6527
    :cond_1b7
    :goto_1b7
    return-void

    :pswitch_data_1b8
    .packed-switch 0xa
        :pswitch_10e  #0000000a
        :pswitch_103  #0000000b
        :pswitch_f0  #0000000c
        :pswitch_f0  #0000000d
        :pswitch_e9  #0000000e
        :pswitch_e4  #0000000f
        :pswitch_dd  #00000010
        :pswitch_cd  #00000011
        :pswitch_c2  #00000012
        :pswitch_b5  #00000013
        :pswitch_ae  #00000014
        :pswitch_a5  #00000015
        :pswitch_9a  #00000016
        :pswitch_8d  #00000017
        :pswitch_82  #00000018
        :pswitch_7b  #00000019
        :pswitch_70  #0000001a
        :pswitch_69  #0000001b
        :pswitch_5c  #0000001c
        :pswitch_51  #0000001d
        :pswitch_48  #0000001e
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x28
        :pswitch_41  #00000028
        :pswitch_3a  #00000029
        :pswitch_29  #0000002a
    .end packed-switch
.end method
