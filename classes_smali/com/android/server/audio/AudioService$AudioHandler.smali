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

    .line 5169
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    .line 5169
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 5169
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 5422
    if-eqz p1, :cond_20

    .line 5424
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 5425
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 5428
    goto :goto_20

    .line 5426
    :catch_9
    move-exception p1

    .line 5427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    :cond_20
    :goto_20
    return-void
.end method

.method private getSoundEffectFilePath(I)Ljava/lang/String;
    .registers 7

    .line 5209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5210
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

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

    .line 5211
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_62

    .line 5212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object p1, v2, p1

    aget p1, p1, v4

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5215
    :cond_62
    return-object v0
.end method

.method private onLoadSoundEffects()Z
    .registers 16

    .line 5221
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5222
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 5223
    const-string v1, "AS.AudioService"

    const-string/jumbo v3, "onLoadSoundEffects() called before boot complete"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    monitor-exit v0

    return v2

    .line 5227
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    .line 5228
    monitor-exit v0

    return v3

    .line 5231
    :cond_25
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)V

    .line 5233
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v4, Landroid/media/SoundPool$Builder;

    invoke-direct {v4}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 5234
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v4

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v7, 0xd

    .line 5236
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 5237
    invoke-virtual {v6, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 5238
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 5235
    invoke-virtual {v4, v5}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v4

    .line 5239
    invoke-virtual {v4}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v4

    .line 5233
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5240
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 5241
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v5}, Lcom/android/server/audio/AudioService;->access$4402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5242
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 5243
    const/4 v1, 0x3

    move v5, v1

    .line 5244
    :goto_71
    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_200

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_94

    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_94

    .line 5247
    :try_start_7f
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_88} :catch_89
    .catchall {:try_start_7f .. :try_end_88} :catchall_200

    .line 5250
    :goto_88
    goto :goto_92

    .line 5248
    :catch_89
    move-exception v5

    .line 5249
    :try_start_8a
    const-string v5, "AS.AudioService"

    const-string v7, "Interrupted while waiting sound pool listener thread."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 5244
    :goto_92
    move v5, v6

    goto :goto_71

    .line 5253
    :cond_94
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v5

    if-nez v5, :cond_cf

    .line 5254
    const-string v1, "AS.AudioService"

    const-string/jumbo v3, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 5256
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 5257
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 5259
    :cond_ba
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$4402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5260
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 5261
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5262
    monitor-exit v0

    return v2

    .line 5270
    :cond_cf
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 5271
    move v6, v2

    :goto_da
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, -0x1

    if-ge v6, v9, :cond_ea

    .line 5272
    aput v10, v5, v6

    .line 5271
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 5280
    :cond_ea
    nop

    .line 5281
    move v6, v2

    move v9, v6

    :goto_ed
    const/16 v11, 0xa

    if-ge v6, v11, :cond_165

    .line 5283
    iget-object v11, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v3

    if-nez v11, :cond_fe

    .line 5284
    goto :goto_162

    .line 5286
    :cond_fe
    iget-object v11, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v2

    aget v11, v5, v11

    if-ne v11, v10, :cond_14c

    .line 5287
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v11

    .line 5288
    iget-object v12, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v12

    invoke-virtual {v12, v11, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v12

    .line 5289
    if-gtz v12, :cond_133

    .line 5290
    const-string v12, "AS.AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Soundpool could not load file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    .line 5292
    :cond_133
    iget-object v11, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aput v12, v11, v3

    .line 5293
    iget-object v11, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v2

    aput v12, v5, v11

    .line 5294
    add-int/lit8 v9, v9, 0x1

    .line 5296
    :goto_14b
    goto :goto_162

    .line 5297
    :cond_14c
    iget-object v11, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    iget-object v12, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 5298
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v6

    aget v12, v12, v2

    aget v12, v5, v12

    aput v12, v11, v3

    .line 5281
    :goto_162
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    .line 5302
    :cond_165
    if-lez v9, :cond_197

    .line 5303
    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_170
    .catchall {:try_start_8a .. :try_end_170} :catchall_200

    .line 5305
    nop

    .line 5306
    move v5, v1

    move v1, v3

    .line 5307
    :goto_173
    if-ne v1, v3, :cond_198

    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_198

    .line 5309
    :try_start_179
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 5310
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I

    move-result v1
    :try_end_18c
    .catch Ljava/lang/InterruptedException; {:try_start_179 .. :try_end_18c} :catch_18d
    .catchall {:try_start_179 .. :try_end_18c} :catchall_200

    goto :goto_195

    .line 5311
    :catch_18d
    move-exception v5

    .line 5312
    :try_start_18e
    const-string v5, "AS.AudioService"

    const-string v9, "Interrupted while waiting sound pool callback."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    :goto_195
    move v5, v6

    goto :goto_173

    .line 5316
    :cond_197
    move v1, v10

    .line 5319
    :cond_198
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_1ae

    .line 5320
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 5321
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 5323
    :cond_1ae
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$4402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5324
    if-eqz v1, :cond_1fb

    .line 5325
    const-string v5, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onLoadSoundEffects(), Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " while loading samples"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    move v5, v2

    :goto_1d2
    if-ge v5, v11, :cond_1ed

    .line 5328
    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v5

    aget v6, v6, v3

    if-lez v6, :cond_1ea

    .line 5329
    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v5

    aput v10, v6, v3

    .line 5327
    :cond_1ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d2

    .line 5333
    :cond_1ed
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/SoundPool;->release()V

    .line 5334
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5336
    :cond_1fb
    monitor-exit v0

    .line 5337
    if-nez v1, :cond_1ff

    move v2, v3

    :cond_1ff
    return v2

    .line 5336
    :catchall_200
    move-exception v1

    monitor-exit v0
    :try_end_202
    .catchall {:try_start_18e .. :try_end_202} :catchall_200

    throw v1
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 3

    .line 5441
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 5444
    goto :goto_5

    .line 5442
    :catch_4
    move-exception p1

    .line 5445
    :goto_5
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4

    .line 5433
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5436
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 11

    .line 5372
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5374
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 5376
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_14

    .line 5377
    monitor-exit v0

    return-void

    .line 5381
    :cond_14
    if-gez p2, :cond_28

    .line 5382
    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4500()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x41a00000  # 20.0f

    div-float/2addr p2, v3

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p2, v1

    move v4, p2

    goto :goto_2d

    .line 5384
    :cond_28
    int-to-float p2, p2

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr p2, v1

    move v4, p2

    .line 5387
    :goto_2d
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object p2

    aget-object p2, p2, p1

    const/4 v1, 0x1

    aget p2, p2, v1

    if-lez p2, :cond_54

    .line 5388
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object p1, v2, p1

    aget v2, p1, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v1, p2

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_c5

    .line 5391
    :cond_54
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_c7

    .line 5393
    :try_start_59
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object p1

    .line 5394
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {p2, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5396
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V

    .line 5397
    invoke-virtual {p2, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 5398
    new-instance p1, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5403
    new-instance p1, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5409
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_7c} :catch_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_7c} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_7c} :catch_7d
    .catchall {:try_start_59 .. :try_end_7c} :catchall_c7

    goto :goto_c4

    .line 5414
    :catch_7d
    move-exception p1

    .line 5415
    :try_start_7e
    const-string p2, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 5412
    :catch_95
    move-exception p1

    .line 5413
    const-string p2, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 5410
    :catch_ad
    move-exception p1

    .line 5411
    const-string p2, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    :goto_c4
    nop

    .line 5418
    :goto_c5
    monitor-exit v0

    .line 5419
    return-void

    .line 5418
    :catchall_c7
    move-exception p1

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_7e .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .line 5346
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5347
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_11

    .line 5348
    monitor-exit v0

    return-void

    .line 5351
    :cond_11
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 5352
    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 5353
    aput v2, v1, v3

    .line 5352
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 5356
    :cond_2c
    move v3, v2

    :goto_2d
    const/16 v4, 0xa

    if-ge v3, v4, :cond_7a

    .line 5357
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3f

    .line 5358
    goto :goto_77

    .line 5360
    :cond_3f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_77

    .line 5361
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 5362
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 5363
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    .line 5356
    :cond_77
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 5366
    :cond_7a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 5367
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5368
    monitor-exit v0

    .line 5369
    return-void

    .line 5368
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method private persistRingerMode(I)V
    .registers 4

    .line 5202
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5203
    return-void

    .line 5205
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5206
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 5

    .line 5187
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5188
    return-void

    .line 5190
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 5191
    return-void

    .line 5193
    :cond_19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$3900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5194
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5195
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 5196
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    const/4 p2, -0x2

    .line 5194
    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5199
    :cond_35
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 5

    .line 5174
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5177
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 5178
    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_29

    .line 5179
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    if-eq v0, v1, :cond_26

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    .line 5180
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 5181
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5178
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 5184
    :cond_29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 5449
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_180

    const/4 v1, 0x1

    if-eq v0, v1, :cond_176

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_166

    const/4 v2, 0x5

    if-eq v0, v2, :cond_14e

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_133

    const/16 v2, 0x8

    if-eq v0, v2, :cond_104

    const/16 v2, 0x64

    if-eq v0, v2, :cond_e8

    packed-switch v0, :pswitch_data_18e

    goto/16 :goto_18c

    .line 5589
    :pswitch_21  #0x1d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_18c

    .line 5585
    :pswitch_2c  #0x1c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 5586
    goto/16 :goto_18c

    .line 5581
    :pswitch_39  #0x1b
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)V

    .line 5582
    goto/16 :goto_18c

    .line 5577
    :pswitch_40  #0x1a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 5578
    goto/16 :goto_18c

    .line 5573
    :pswitch_4b  #0x19
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)V

    .line 5574
    goto/16 :goto_18c

    .line 5569
    :pswitch_52  #0x18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 5570
    goto/16 :goto_18c

    .line 5474
    :pswitch_5d  #0x17
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_64

    goto :goto_65

    :cond_64
    move v1, v3

    :goto_65
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Z)V

    .line 5475
    goto/16 :goto_18c

    .line 5565
    :pswitch_6a  #0x16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 5566
    goto/16 :goto_18c

    .line 5546
    :pswitch_75  #0x15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;I)V

    .line 5547
    goto/16 :goto_18c

    .line 5542
    :pswitch_7e  #0x14
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 5543
    goto/16 :goto_18c

    .line 5561
    :pswitch_85  #0x13
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 5562
    goto/16 :goto_18c

    .line 5557
    :pswitch_92  #0x12
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;II)V

    .line 5558
    goto/16 :goto_18c

    .line 5550
    :pswitch_9d  #0x11
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5551
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5554
    goto/16 :goto_18c

    .line 5538
    :pswitch_ae  #0x10
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 5539
    goto/16 :goto_18c

    .line 5478
    :pswitch_b5  #0xf
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    .line 5479
    goto/16 :goto_18c

    .line 5534
    :pswitch_ba  #0xe
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 5535
    goto/16 :goto_18c

    .line 5530
    :pswitch_c1  #0xc, 0xd
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    if-ne v2, v4, :cond_ca

    goto :goto_cb

    :cond_ca
    move v1, v3

    :goto_cb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 5532
    goto/16 :goto_18c

    .line 5525
    :pswitch_d4  #0xb
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 5526
    goto/16 :goto_18c

    .line 5456
    :pswitch_df  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 5457
    goto/16 :goto_18c

    .line 5519
    :cond_e8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_f3

    goto :goto_f4

    :cond_f3
    move v1, v3

    :goto_f4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 5521
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5522
    goto/16 :goto_18c

    .line 5504
    :cond_104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5505
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 5506
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 5507
    if-ne v2, v1, :cond_125

    .line 5508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    goto :goto_18c

    .line 5512
    :cond_125
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v3, v2, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5514
    invoke-static {v2, p1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5516
    goto :goto_18c

    .line 5484
    :cond_133
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v0

    .line 5485
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_18c

    .line 5486
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 5487
    monitor-enter p1

    .line 5488
    if-eqz v0, :cond_143

    goto :goto_144

    :cond_143
    const/4 v3, -0x1

    :goto_144
    :try_start_144
    iput v3, p1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5489
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 5490
    monitor-exit p1

    .line 5491
    goto :goto_18c

    .line 5490
    :catchall_14b
    move-exception v0

    monitor-exit p1
    :try_end_14d
    .catchall {:try_start_144 .. :try_end_14d} :catchall_14b

    throw v0

    .line 5495
    :cond_14e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 5496
    const-string p1, "AS.AudioService"

    const-string v0, "Stream muted, skip playback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    .line 5498
    :cond_15e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    .line 5500
    goto :goto_18c

    .line 5470
    :cond_166
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 5471
    goto :goto_18c

    .line 5466
    :cond_16c
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 5467
    goto :goto_18c

    .line 5460
    :cond_176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5461
    goto :goto_18c

    .line 5452
    :cond_180
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5453
    nop

    .line 5592
    :cond_18c
    :goto_18c
    return-void

    nop

    :pswitch_data_18e
    .packed-switch 0xa
        :pswitch_df  #0000000a
        :pswitch_d4  #0000000b
        :pswitch_c1  #0000000c
        :pswitch_c1  #0000000d
        :pswitch_ba  #0000000e
        :pswitch_b5  #0000000f
        :pswitch_ae  #00000010
        :pswitch_9d  #00000011
        :pswitch_92  #00000012
        :pswitch_85  #00000013
        :pswitch_7e  #00000014
        :pswitch_75  #00000015
        :pswitch_6a  #00000016
        :pswitch_5d  #00000017
        :pswitch_52  #00000018
        :pswitch_4b  #00000019
        :pswitch_40  #0000001a
        :pswitch_39  #0000001b
        :pswitch_2c  #0000001c
        :pswitch_21  #0000001d
    .end packed-switch
.end method
