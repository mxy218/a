.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
.super Lcom/android/internal/app/ISoundTriggerService$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundTriggerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 340
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z

    .line 343
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 344
    return-void
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .registers 8

    .line 633
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 634
    nop

    .line 635
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_13

    return v1

    .line 637
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModelState(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModelState(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 644
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 645
    if-nez v2, :cond_99

    .line 646
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 651
    monitor-exit v0

    return v1

    .line 653
    :cond_99
    iget p1, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_d6

    .line 659
    const-string p1, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported model type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): Unsupported model type, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    goto :goto_e3

    .line 655
    :cond_d6
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object p1

    iget-object v1, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v1

    .line 656
    nop

    .line 666
    :goto_e3
    monitor-exit v0

    return v1

    .line 667
    :catchall_e5
    move-exception p1

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_4d .. :try_end_e7} :catchall_e5

    throw p1
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p1

    .line 312
    return-object p1
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6

    .line 620
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 622
    :cond_11
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 623
    :try_start_18
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 624
    if-nez v2, :cond_2c

    .line 625
    monitor-exit v0

    return v1

    .line 627
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_3c

    .line 628
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result p1

    return p1

    .line 627
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 350
    :cond_12
    if-eqz p1, :cond_a1

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1a

    goto/16 :goto_a1

    .line 359
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGenericSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGenericSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_58
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 370
    if-eqz v1, :cond_90

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 371
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 372
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_80
    .catchall {:try_start_58 .. :try_end_80} :catchall_9e

    .line 373
    :try_start_80
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v1

    goto :goto_90

    :catchall_8d
    move-exception p1

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw p1

    .line 376
    :cond_90
    :goto_90
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit v0

    .line 378
    const/4 p1, 0x0

    return p1

    .line 377
    :catchall_9e
    move-exception p1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_8f .. :try_end_a0} :catchall_9e

    throw p1

    .line 351
    :cond_a1
    :goto_a1
    const-string p1, "SoundTriggerService"

    const-string v0, "Invalid sound model"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "loadGenericSoundModel(): Invalid sound model"

    invoke-direct {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 356
    return v1
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 385
    :cond_12
    if-eqz p1, :cond_c7

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1a

    goto/16 :goto_c7

    .line 393
    :cond_1a
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v0, :cond_b1

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    goto/16 :goto_b1

    .line 403
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 410
    :try_start_64
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 414
    const/4 v2, 0x0

    if-eqz v1, :cond_a1

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 415
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 416
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_91
    .catchall {:try_start_64 .. :try_end_91} :catchall_ae

    .line 417
    :try_start_91
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    monitor-exit v1

    goto :goto_a1

    :catchall_9e
    move-exception p1

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw p1

    .line 420
    :cond_a1
    :goto_a1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v0

    .line 422
    return v2

    .line 421
    :catchall_ae
    move-exception p1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_ae

    throw p1

    .line 394
    :cond_b1
    :goto_b1
    const-string p1, "SoundTriggerService"

    const-string v0, "Only one keyphrase per model is currently supported."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "loadKeyphraseSoundModel(): Only one keyphrase per model is currently supported."

    invoke-direct {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 400
    return v1

    .line 386
    :cond_c7
    :goto_c7
    const-string p1, "SoundTriggerService"

    const-string v0, "Invalid sound model"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "loadKeyphraseSoundModel(): Invalid sound model"

    invoke-direct {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 391
    return v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 241
    :catch_5
    move-exception p1

    .line 244
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 245
    const-string p2, "SoundTriggerService"

    const-string p3, "SoundTriggerService Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_11
    throw p1
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 10

    .line 254
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 257
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): Uuid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 264
    if-nez v0, :cond_7d

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Null model in database for id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p2

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): Null model in database for id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 270
    return v1

    .line 273
    :cond_7d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result p2

    .line 275
    if-nez p2, :cond_9a

    .line 276
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 278
    :cond_9a
    return p2
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 16

    .line 428
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1b

    return v1

    .line 436
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 442
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 443
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 444
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    move-object v4, v0

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 446
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 447
    :try_start_6a
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 448
    if-nez p3, :cond_b7

    .line 449
    const-string p3, "SoundTriggerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not loaded"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p3

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognitionForService():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 454
    monitor-exit p2

    return v1

    .line 456
    :cond_b7
    nop

    .line 457
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_bf
    .catchall {:try_start_6a .. :try_end_bf} :catchall_18d

    .line 458
    :try_start_bf
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 459
    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_bf .. :try_end_d0} :catchall_18a

    .line 460
    if-eqz v3, :cond_10d

    .line 461
    :try_start_d2
    const-string p3, "SoundTriggerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already running"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p3

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognitionForService():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already running"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 467
    monitor-exit p2

    return v1

    .line 470
    :cond_10d
    iget v2, p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12a

    .line 476
    const-string p1, "SoundTriggerService"

    const-string p3, "Unknown model type"

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo p4, "startRecognitionForService(): Unknown model type"

    invoke-direct {p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 481
    monitor-exit p2

    return v1

    .line 472
    :cond_12a
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v2, p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    check-cast p3, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v1, v2, p3, v0, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result p3

    .line 474
    nop

    .line 484
    if-eqz p3, :cond_162

    .line 485
    const-string p1, "SoundTriggerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start model: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v0, "startRecognitionForService(): Failed to start model:"

    invoke-direct {p4, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 490
    monitor-exit p2

    return p3

    .line 492
    :cond_162
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_169
    .catchall {:try_start_d2 .. :try_end_169} :catchall_18d

    .line 493
    :try_start_169
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object p4

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    monitor-exit p3
    :try_end_177
    .catchall {:try_start_169 .. :try_end_177} :catchall_187

    .line 496
    :try_start_177
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 497
    monitor-exit p2
    :try_end_185
    .catchall {:try_start_177 .. :try_end_185} :catchall_18d

    .line 498
    const/4 p1, 0x0

    return p1

    .line 494
    :catchall_187
    move-exception p1

    :try_start_188
    monitor-exit p3
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    :try_start_189
    throw p1
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_18d

    .line 459
    :catchall_18a
    move-exception p1

    :try_start_18b
    monitor-exit v2
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    :try_start_18c
    throw p1

    .line 497
    :catchall_18d
    move-exception p1

    monitor-exit p2
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_18d

    throw p1
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecognition(): Uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    if-nez v0, :cond_44

    const/high16 p1, -0x80000000

    return p1

    .line 293
    :cond_44
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p2

    .line 294
    if-nez p2, :cond_61

    .line 295
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 297
    :cond_61
    return p2
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .registers 8

    .line 503
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 506
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 513
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 514
    if-nez v2, :cond_9b

    .line 515
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognitionForService(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 521
    monitor-exit v0

    return v1

    .line 523
    :cond_9b
    nop

    .line 524
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a3
    .catchall {:try_start_4e .. :try_end_a3} :catchall_17e

    .line 525
    :try_start_a3
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 526
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_17b

    .line 527
    if-nez v4, :cond_f1

    .line 528
    :try_start_b6
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognitionForService(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not running"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 534
    monitor-exit v0

    return v1

    .line 537
    :cond_f1
    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_10e

    .line 542
    const-string p1, "SoundTriggerService"

    const-string v2, "Unknown model type"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "stopRecognitionForService(): Unknown model type"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 547
    monitor-exit v0

    return v1

    .line 539
    :cond_10e
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 540
    nop

    .line 550
    if-eqz v1, :cond_153

    .line 551
    const-string p1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): Failed to stop model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 556
    monitor-exit v0

    return v1

    .line 558
    :cond_153
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_15a
    .catchall {:try_start_b6 .. :try_end_15a} :catchall_17e

    .line 559
    :try_start_15a
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    monitor-exit v1
    :try_end_168
    .catchall {:try_start_15a .. :try_end_168} :catchall_178

    .line 562
    :try_start_168
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 563
    monitor-exit v0
    :try_end_176
    .catchall {:try_start_168 .. :try_end_176} :catchall_17e

    .line 564
    const/4 p1, 0x0

    return p1

    .line 560
    :catchall_178
    move-exception p1

    :try_start_179
    monitor-exit v1
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    :try_start_17a
    throw p1
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_17e

    .line 526
    :catchall_17b
    move-exception p1

    :try_start_17c
    monitor-exit v3
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    :try_start_17d
    throw p1

    .line 563
    :catchall_17e
    move-exception p1

    monitor-exit v0
    :try_end_180
    .catchall {:try_start_17d .. :try_end_180} :catchall_17e

    throw p1
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 8

    .line 569
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 572
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadSoundModel(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 580
    if-nez v2, :cond_9b

    .line 581
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadSoundModel(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 586
    monitor-exit v0

    return v1

    .line 589
    :cond_9b
    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v4, 0x0

    if-eqz v3, :cond_c8

    const/4 v5, 0x1

    if-eq v3, v5, :cond_bb

    .line 598
    const-string p1, "SoundTriggerService"

    const-string v2, "Unknown model type"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "unloadSoundModel(): Unknown model type"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 603
    monitor-exit v0

    return v1

    .line 595
    :cond_bb
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v1

    .line 596
    goto :goto_db

    .line 591
    :cond_c8
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v1

    .line 593
    nop

    .line 605
    :goto_db
    if-eqz v1, :cond_f5

    .line 606
    const-string p1, "SoundTriggerService"

    const-string v2, "Failed to unload model"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "unloadSoundModel(): Failed to unload model"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 611
    monitor-exit v0

    return v1

    .line 613
    :cond_f5
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    monitor-exit v0

    return v4

    .line 615
    :catchall_104
    move-exception p1

    monitor-exit v0
    :try_end_106
    .catchall {:try_start_4e .. :try_end_106} :catchall_104

    throw p1
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 6

    .line 317
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSoundModel(): model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z

    .line 326
    return-void
.end method
