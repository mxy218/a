.class Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelData"
.end annotation


# static fields
.field static final MODEL_LOADED:I = 0x1

.field static final MODEL_NOTLOADED:I = 0x0

.field static final MODEL_STARTED:I = 0x2


# instance fields
.field private mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mModelHandle:I

.field private mModelId:Ljava/util/UUID;

.field private mModelState:I

.field private mModelType:I

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;


# direct methods
.method private constructor <init>(Ljava/util/UUID;I)V
    .registers 5
    .param p1, "modelId"  # Ljava/util/UUID;
    .param p2, "modelType"  # I

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1250
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1254
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1257
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 1260
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    .line 1263
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1264
    return-void
.end method

.method static createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"  # Ljava/util/UUID;

    .line 1271
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"  # Ljava/util/UUID;

    .line 1267
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createModelDataOfUnknownType(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"  # Ljava/util/UUID;

    .line 1277
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized callbackToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1387
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_19

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_16
    const-string/jumbo v1, "null"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clearCallback()V
    .registers 2

    monitor-enter p0

    .line 1321
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1322
    monitor-exit p0

    return-void

    .line 1320
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clearState()V
    .registers 3

    monitor-enter p0

    .line 1313
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    .line 1314
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1316
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1317
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1318
    monitor-exit p0

    return-void

    .line 1312
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 2

    monitor-enter p0

    .line 1285
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getHandle()I
    .registers 2

    monitor-enter p0

    .line 1333
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getModelId()Ljava/util/UUID;
    .registers 2

    monitor-enter p0

    .line 1337
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getModelType()I
    .registers 2

    monitor-enter p0

    .line 1362
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2

    monitor-enter p0

    .line 1341
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .registers 2

    monitor-enter p0

    .line 1358
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isGenericModel()Z
    .registers 3

    monitor-enter p0

    .line 1370
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isKeyphraseModel()Z
    .registers 2

    monitor-enter p0

    .line 1366
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isModelLoaded()Z
    .registers 4

    monitor-enter p0

    .line 1289
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_d
    :goto_d
    monitor-exit p0

    return v1

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isModelNotLoaded()Z
    .registers 2

    monitor-enter p0

    .line 1293
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isModelStarted()Z
    .registers 3

    monitor-enter p0

    .line 1309
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isRequested()Z
    .registers 2

    monitor-enter p0

    .line 1346
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized modelTypeToString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, "type":Ljava/lang/String;
    :try_start_2
    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    goto :goto_18

    .line 1405
    :cond_d
    const-string v1, "Generic"

    move-object v0, v1

    goto :goto_18

    .line 1407
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_11
    const-string v1, "Keyphrase"

    move-object v0, v1

    goto :goto_18

    .line 1406
    :cond_15
    const-string v1, "Unknown"

    move-object v0, v1

    .line 1409
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object v1

    .line 1402
    .end local v0  # "type":Ljava/lang/String;
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized requestedToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1383
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    if-eqz v1, :cond_12

    const-string v1, "Yes"

    goto :goto_14

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_12
    const-string v1, "No"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V
    .registers 2
    .param p1, "callback"  # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-enter p0

    .line 1281
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1282
    monitor-exit p0

    return-void

    .line 1280
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local p1  # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHandle(I)V
    .registers 2
    .param p1, "handle"  # I

    monitor-enter p0

    .line 1325
    :try_start_1
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1326
    monitor-exit p0

    return-void

    .line 1324
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local p1  # "handle":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLoaded()V
    .registers 2

    monitor-enter p0

    .line 1305
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1306
    monitor-exit p0

    return-void

    .line 1304
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 2
    .param p1, "config"  # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    monitor-enter p0

    .line 1329
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1330
    monitor-exit p0

    return-void

    .line 1328
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local p1  # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setRequested(Z)V
    .registers 2
    .param p1, "requested"  # Z

    monitor-enter p0

    .line 1350
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1351
    monitor-exit p0

    return-void

    .line 1349
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local p1  # "requested":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V
    .registers 2
    .param p1, "soundModel"  # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    monitor-enter p0

    .line 1354
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1355
    monitor-exit p0

    return-void

    .line 1353
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local p1  # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setStarted()V
    .registers 2

    monitor-enter p0

    .line 1297
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1298
    monitor-exit p0

    return-void

    .line 1296
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setStopped()V
    .registers 2

    monitor-enter p0

    .line 1301
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1302
    monitor-exit p0

    return-void

    .line 1300
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stateToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1374
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 1379
    const-string v0, "Unknown state"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 1377
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_f
    :try_start_f
    const-string v0, "STARTED"
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 1376
    :cond_13
    :try_start_13
    const-string v0, "LOADED"
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 1375
    :cond_17
    :try_start_17
    const-string v0, "NOT_LOADED"
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 1373
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1395
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nModelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->requestedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->callbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->uuidToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->modelTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 1395
    monitor-exit p0

    return-object v0

    .line 1394
    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized uuidToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1391
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .end local p0  # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
