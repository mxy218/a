.class public final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
.super Lcom/android/server/soundtrigger/SoundTriggerInternal;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalSoundTriggerService"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V
    .registers 3

    .line 1322
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerInternal;-><init>()V

    .line 1323
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mContext:Landroid/content/Context;

    .line 1324
    return-void
.end method

.method private declared-synchronized isInitialized()Z
    .registers 4

    monitor-enter p0

    .line 1368
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_1d

    .line 1369
    const-string v0, "SoundTriggerService"

    const-string v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "SoundTriggerHelper not initialized."

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    .line 1374
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1376
    :cond_1d
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1367
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1358
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1359
    :cond_7
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1361
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1364
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->dump(Ljava/io/PrintWriter;)V

    .line 1365
    return-void
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 2

    .line 1346
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1347
    :cond_8
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .registers 2

    monitor-enter p0

    .line 1327
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1328
    monitor-exit p0

    return-void

    .line 1326
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 6

    .line 1333
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p1, -0x80000000

    return p1

    .line 1334
    :cond_9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 4

    monitor-enter p0

    .line 1340
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_13

    if-nez v0, :cond_b

    const/high16 p1, -0x80000000

    monitor-exit p0

    return p1

    .line 1341
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    .line 1339
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadKeyphraseModel(I)I
    .registers 3

    .line 1352
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p1, -0x80000000

    return p1

    .line 1353
    :cond_9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result p1

    return p1
.end method
