.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;
    }
.end annotation


# instance fields
.field private mCurUser:I

.field private mCurUserUnlocked:Z

.field private final mEnableService:Z

.field mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSafeMode:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 3

    .line 212
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    .line 1432
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 213
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->shouldEnableService(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    .line 214
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/util/concurrent/Executor;)V

    .line 215
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 2

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    return p0
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    .line 1281
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1285
    return-void

    .line 1283
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V
    .registers 3

    .line 1288
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v0, :cond_17

    .line 1289
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 1293
    return-void

    .line 1290
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller is not the current voice interaction service"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    .line 407
    nop

    .line 408
    const v0, 0x104017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    :cond_f
    return-object p1
.end method

.method private initForUserNoTracing(I)V
    .registers 8

    .line 287
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 291
    nop

    .line 294
    const/4 v2, 0x0

    if-nez v0, :cond_29

    if-eqz v1, :cond_29

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v3, :cond_29

    .line 301
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_2a

    .line 308
    move-object v1, v2

    goto :goto_2a

    .line 314
    :cond_29
    move-object v3, v2

    :cond_2a
    :goto_2a
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 316
    if-eqz v4, :cond_3f

    .line 317
    invoke-virtual {p0, p1, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    .line 318
    if-eqz v3, :cond_3f

    .line 320
    move-object v1, v2

    .line 326
    :cond_3f
    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-nez v4, :cond_50

    if-eqz v0, :cond_50

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 329
    invoke-virtual {p0, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 330
    const-string v0, ""

    .line 334
    :cond_50
    if-eqz v1, :cond_7f

    .line 337
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 338
    nop

    .line 339
    nop

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 341
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_64

    :cond_63
    move-object v0, v2

    .line 343
    :goto_64
    const/high16 v5, 0xc0000

    :try_start_66
    invoke-interface {v4, v1, v5, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6a} :catch_75

    .line 346
    if-eqz v0, :cond_73

    .line 347
    :try_start_6c
    invoke-interface {v4, v0, v5, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_70} :catch_71

    goto :goto_74

    .line 351
    :catch_71
    move-exception v4

    goto :goto_77

    .line 346
    :cond_73
    move-object v4, v2

    .line 352
    :goto_74
    goto :goto_78

    .line 351
    :catch_75
    move-exception v1

    move-object v1, v2

    :goto_77
    move-object v4, v2

    .line 354
    :goto_78
    if-eqz v1, :cond_7f

    if-eqz v0, :cond_7e

    if-eqz v4, :cond_7f

    .line 356
    :cond_7e
    return-void

    .line 363
    :cond_7f
    if-nez v3, :cond_89

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v0, :cond_89

    .line 364
    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    .line 367
    :cond_89
    if-eqz v3, :cond_b8

    .line 369
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 370
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 371
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 372
    new-instance v0, Landroid/content/ComponentName;

    .line 373
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 374
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 375
    return-void

    .line 380
    :cond_b8
    invoke-virtual {p0, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initSimpleRecognizer(Landroid/service/voice/VoiceInteractionServiceInfo;I)V

    .line 381
    return-void
.end method

.method private setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 3

    .line 1296
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 1297
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1297
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V

    .line 1299
    return-void
.end method

.method private shouldEnableService(Landroid/content/Context;)Z
    .registers 3

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 400
    const/4 p1, 0x1

    return p1

    .line 402
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 403
    const-string v0, "android.software.voice_recognizers"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 402
    return p1
.end method

.method private declared-synchronized unloadAllKeyphraseModels()V
    .registers 8

    monitor-enter p0

    .line 1049
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_63

    .line 1052
    :try_start_10
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    .line 1053
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1052
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    move-result v3

    .line 1054
    if-eqz v3, :cond_4e

    .line 1055
    const-string v4, "VoiceInteractionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unload keyphrase "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_55

    .line 1059
    :cond_4e
    :try_start_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    nop

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1059
    :catchall_55
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1062
    :cond_5a
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_63

    .line 1063
    monitor-exit p0

    return-void

    .line 1048
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .registers 2

    .line 1146
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    monitor-exit p0

    return v0

    .line 1149
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 1157
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    monitor-exit p0

    .line 1156
    return v0

    .line 1158
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .registers 5

    .line 798
    monitor-enter p0

    .line 799
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_e

    .line 800
    const-string p1, "VoiceInteractionManagerService"

    const-string v0, "closeSystemDialogs without running voice interaction service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    monitor-exit p0

    return-void

    .line 803
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 805
    :try_start_12
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1d

    .line 807
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    nop

    .line 809
    monitor-exit p0

    .line 810
    return-void

    .line 807
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 809
    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 10

    .line 926
    const-string v0, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 928
    if-eqz p2, :cond_69

    .line 933
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 935
    nop

    .line 937
    :try_start_10
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    move-result v3

    .line 938
    if-eqz v3, :cond_30

    .line 939
    const-string v4, "VoiceInteractionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unload keyphrase sound model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_30
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z

    move-result p2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_64

    .line 942
    if-eqz p2, :cond_3c

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3c
    const/high16 v0, -0x80000000

    .line 944
    :goto_3e
    if-eqz p2, :cond_60

    .line 945
    monitor-enter p0

    .line 947
    :try_start_41
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p2, :cond_50

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz p2, :cond_50

    .line 948
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 950
    :cond_50
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 951
    monitor-exit p0

    goto :goto_60

    :catchall_5d
    move-exception p1

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5d

    throw p1

    .line 953
    :cond_60
    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    return v0

    .line 944
    :catchall_64
    move-exception p1

    .line 953
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 929
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument(s) in deleteKeyphraseSoundModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 7

    .line 655
    monitor-enter p0

    .line 656
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_19

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    .line 662
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    .line 664
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 662
    return p1

    .line 664
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 657
    :cond_19
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "deliverNewSession without running voice interaction service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1248
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VoiceInteractionManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1249
    :cond_d
    monitor-enter p0

    .line 1250
    :try_start_e
    const-string v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_34

    .line 1253
    const-string p1, "  (No active implementation)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    monitor-exit p0

    return-void

    .line 1256
    :cond_34
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1257
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_42

    .line 1258
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1257
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .registers 14

    .line 501
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100c0000

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 509
    const/4 v2, 0x0

    const-string v3, "VoiceInteractionManagerService"

    if-nez v1, :cond_34

    .line 510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no available voice interaction services found for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-object v2

    .line 515
    :cond_34
    nop

    .line 516
    const/4 v4, 0x0

    :goto_36
    if-ge v4, v1, :cond_e7

    .line 517
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 518
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e3

    .line 519
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :try_start_51
    new-instance v7, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-direct {v7, v8, v6, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 523
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_ad

    .line 524
    if-eqz p2, :cond_72

    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 526
    :cond_72
    if-nez v2, :cond_76

    .line 527
    move-object v2, v7

    goto :goto_cd

    .line 529
    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "More than one voice interaction service, picking first "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Landroid/content/ComponentName;

    .line 532
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 533
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 539
    :cond_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad interaction service "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_cd} :catch_ce

    .line 544
    :cond_cd
    :goto_cd
    goto :goto_e3

    .line 542
    :catch_ce
    move-exception v5

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure looking up interaction service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_e3
    :goto_e3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_36

    .line 548
    :cond_e7
    return-object v2
.end method

.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 9

    .line 573
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 574
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 578
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 580
    const-string v2, "VoiceInteractionManagerService"

    if-nez v1, :cond_34

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no available voice recognition services found for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 p1, 0x0

    return-object p1

    .line 584
    :cond_34
    const/4 p2, 0x0

    if-eqz p1, :cond_57

    .line 585
    move v3, p2

    :goto_38
    if-ge v3, v1, :cond_57

    .line 586
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 587
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 588
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 585
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 592
    :cond_57
    const/4 p1, 0x1

    if-le v1, p1, :cond_60

    .line 593
    const-string/jumbo p1, "more than one voice recognition service found, picking first"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_60
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 597
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 6

    .line 814
    monitor-enter p0

    .line 815
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_e

    .line 816
    const-string p1, "VoiceInteractionManagerService"

    const-string v0, "finish without running voice interaction service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    monitor-exit p0

    return-void

    .line 819
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    .line 821
    :try_start_12
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 823
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    nop

    .line 825
    monitor-exit p0

    .line 826
    return-void

    .line 823
    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 825
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1067
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1068
    monitor-enter p0

    .line 1069
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return-object v0

    .line 1070
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 1195
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1196
    monitor-enter p0

    .line 1197
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_26

    if-nez v0, :cond_12

    .line 1199
    const/4 p1, 0x0

    :try_start_b
    invoke-interface {p2, p1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    .line 1201
    goto :goto_10

    .line 1200
    :catch_f
    move-exception p1

    .line 1202
    :goto_10
    :try_start_10
    monitor-exit p0

    return-void

    .line 1204
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_26

    .line 1206
    :try_start_16
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_21

    .line 1208
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1209
    nop

    .line 1210
    monitor-exit p0

    .line 1211
    return-void

    .line 1208
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1210
    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw p1
.end method

.method getCurAssistant(I)Landroid/content/ComponentName;
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 623
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 626
    const/4 p1, 0x0

    return-object p1

    .line 630
    :cond_16
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .registers 4

    .line 553
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 553
    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 557
    const/4 p1, 0x0

    return-object p1

    .line 561
    :cond_17
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 4

    .line 602
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 602
    const-string/jumbo v1, "voice_recognition_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 606
    const/4 p1, 0x0

    return-object p1

    .line 610
    :cond_17
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getDisabledShowContext()I
    .registers 5

    .line 847
    monitor-enter p0

    .line 848
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    .line 849
    const-string v0, "VoiceInteractionManagerService"

    const-string v1, "getDisabledShowContext without running voice interaction service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 852
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 855
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getDisabledShowContextLocked(I)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 857
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 855
    return v0

    .line 857
    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 859
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 4

    .line 983
    monitor-enter p0

    .line 984
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 988
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_15

    .line 990
    :try_start_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 988
    return-object p1

    .line 990
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 992
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 7

    .line 884
    const-string v0, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 886
    if-eqz p2, :cond_20

    .line 890
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 891
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 893
    :try_start_f
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 895
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    return-object p1

    .line 895
    :catchall_1b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 887
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument(s) in getKeyphraseSoundModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserDisabledShowContext()I
    .registers 5

    .line 864
    monitor-enter p0

    .line 865
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    .line 866
    const-string v0, "VoiceInteractionManagerService"

    const-string v1, "getUserDisabledShowContext without running voice interaction service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 870
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 873
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getUserDisabledShowContextLocked(I)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 875
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 873
    return v0

    .line 875
    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 877
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method

.method public hideCurrentSession()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_c

    .line 1101
    monitor-exit p0

    return-void

    .line 1103
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3b

    .line 1105
    :try_start_10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_36

    if-eqz v2, :cond_30

    .line 1107
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_36

    .line 1110
    goto :goto_30

    .line 1108
    :catch_28
    move-exception v2

    .line 1109
    :try_start_29
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Failed to call closeSystemDialogs"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_36

    .line 1113
    :cond_30
    :goto_30
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    monitor-exit p0

    .line 1116
    return-void

    .line 1113
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1115
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .registers 4

    .line 687
    monitor-enter p0

    .line 688
    :try_start_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez p1, :cond_f

    .line 689
    const-string p1, "VoiceInteractionManagerService"

    const-string v0, "hideSessionFromSession without running voice interaction service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 692
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 694
    :try_start_13
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->hideSessionLocked()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 696
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 694
    return p1

    .line 696
    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 698
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public initForUser(I)V
    .registers 6

    .line 276
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "VoiceInteractionManagerService"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 279
    :try_start_23
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUserNoTracing(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 281
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p1
.end method

.method public initSimpleRecognizer(Landroid/service/voice/VoiceInteractionServiceInfo;I)V
    .registers 5

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_f

    .line 387
    if-nez p1, :cond_c

    .line 388
    invoke-virtual {p0, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 390
    :cond_c
    invoke-virtual {p0, v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 392
    :cond_f
    return-void
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .registers 7

    .line 961
    monitor-enter p0

    .line 962
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 963
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    .line 965
    if-eqz p3, :cond_25

    .line 969
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 972
    :try_start_f
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 973
    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    .line 974
    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 976
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    return p1

    .line 976
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 966
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 963
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public isSessionRunning()Z
    .registers 2

    .line 1138
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1139
    monitor-enter p0

    .line 1140
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    monitor-exit p0

    return v0

    .line 1141
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public synthetic lambda$switchUser$0$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub(I)V
    .registers 2

    .line 427
    monitor-enter p0

    .line 428
    :try_start_1
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 429
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUserUnlocked:Z

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 431
    monitor-exit p0

    .line 432
    return-void

    .line 431
    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 1120
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1121
    monitor-enter p0

    .line 1122
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_13

    .line 1123
    const-string v0, "VoiceInteractionManagerService"

    const-string v1, "launchVoiceAssistFromKeyguard without running voice interactionservice"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    monitor-exit p0

    return-void

    .line 1127
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_27

    .line 1129
    :try_start_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_22

    .line 1131
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    nop

    .line 1133
    monitor-exit p0

    .line 1134
    return-void

    .line 1131
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1133
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onLockscreenShown()V
    .registers 6

    .line 1163
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1164
    monitor-enter p0

    .line 1165
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_c

    .line 1166
    monitor-exit p0

    return-void

    .line 1168
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3b

    .line 1170
    :try_start_10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_36

    if-eqz v2, :cond_30

    .line 1172
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->onLockscreenShown()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_36

    .line 1175
    goto :goto_30

    .line 1173
    :catch_28
    move-exception v2

    .line 1174
    :try_start_29
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Failed to call onLockscreenShown"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_36

    .line 1178
    :cond_30
    :goto_30
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    nop

    .line 1180
    monitor-exit p0

    .line 1181
    return-void

    .line 1178
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1180
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public onSessionHidden()V
    .registers 6

    .line 1230
    monitor-enter p0

    .line 1231
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1232
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 1233
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 1234
    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_34

    .line 1236
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_34

    .line 1240
    goto :goto_26

    .line 1238
    :catch_1e
    move-exception v2

    .line 1239
    :try_start_1f
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Error delivering voice interaction closed event."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1242
    :cond_29
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1243
    monitor-exit p0

    .line 1244
    return-void

    .line 1243
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onSessionShown()V
    .registers 6

    .line 1214
    monitor-enter p0

    .line 1215
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1216
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 1217
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 1218
    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_34

    .line 1220
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_34

    .line 1223
    goto :goto_26

    .line 1221
    :catch_1e
    move-exception v2

    .line 1222
    :try_start_1f
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Error delivering voice interaction open event."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1225
    :cond_29
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1226
    monitor-exit p0

    .line 1227
    return-void

    .line 1226
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 265
    :catch_5
    move-exception p1

    .line 268
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 269
    const-string p2, "VoiceInteractionManagerService"

    const-string p3, "VoiceInteractionManagerService Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :cond_11
    throw p1
.end method

.method public performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 20

    .line 764
    move-object v1, p0

    monitor-enter p0

    .line 765
    :try_start_2
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_16

    .line 766
    const-string v0, "VoiceInteractionManagerService"

    const-string/jumbo v2, "performDirectAction without running voice interaction service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v0, 0x0

    move-object/from16 v9, p7

    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 768
    monitor-exit p0

    return-void

    .line 770
    :cond_16
    move-object/from16 v9, p7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_37

    .line 772
    :try_start_1c
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->performDirectActionLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_32

    .line 775
    :try_start_2c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    nop

    .line 777
    monitor-exit p0

    .line 778
    return-void

    .line 775
    :catchall_32
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 777
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw v0
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 3

    .line 1186
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1187
    monitor-enter p0

    .line 1188
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1189
    monitor-exit p0

    .line 1190
    return-void

    .line 1189
    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 743
    monitor-enter p0

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_13

    .line 745
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "requestDirectActions without running voice interaction service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 747
    monitor-exit p0

    return-void

    .line 749
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2c

    .line 751
    :try_start_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->requestDirectActionsLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_27

    .line 754
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    nop

    .line 756
    monitor-exit p0

    .line 757
    return-void

    .line 754
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 756
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method resetCurAssistant(I)V
    .registers 5

    .line 634
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 636
    return-void
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .registers 5

    .line 565
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 567
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    .line 565
    :goto_11
    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 570
    return-void
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 616
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    .line 614
    :goto_11
    const-string/jumbo v1, "voice_recognition_service"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 619
    return-void
.end method

.method public setDisabledShowContext(I)V
    .registers 6

    .line 830
    monitor-enter p0

    .line 831
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    .line 832
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo v0, "setDisabledShowContext without running voice interaction service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    monitor-exit p0

    return-void

    .line 835
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 838
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_22

    .line 840
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    nop

    .line 842
    monitor-exit p0

    .line 843
    return-void

    .line 840
    :catchall_22
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 842
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw p1
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .registers 6

    .line 782
    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    .line 784
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "setKeepAwake without running voice interaction service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit p0

    return-void

    .line 787
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 789
    :try_start_13
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1e

    .line 791
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    nop

    .line 793
    monitor-exit p0

    .line 794
    return-void

    .line 791
    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 793
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public setUiHints(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;)V
    .registers 7

    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 1266
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    .line 1267
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_2c

    .line 1268
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 1269
    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_37

    .line 1271
    :try_start_1d
    invoke-interface {v1, p2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onSetUiHints(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_37

    .line 1274
    goto :goto_29

    .line 1272
    :catch_21
    move-exception v1

    .line 1273
    :try_start_22
    const-string v2, "VoiceInteractionManagerService"

    const-string v3, "Error delivering UI hints."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1276
    :cond_2c
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1277
    monitor-exit p0

    .line 1278
    return-void

    .line 1277
    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    .registers 7

    .line 640
    monitor-enter p0

    .line 641
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_19

    .line 645
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_14

    .line 647
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    nop

    .line 649
    monitor-exit p0

    .line 650
    return-void

    .line 647
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 649
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 8

    .line 1076
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_15

    .line 1079
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "showSessionForActiveService without running voice interactionservice"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1083
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2d

    .line 1085
    :try_start_19
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    or-int/lit8 p2, p2, 0x1

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_28

    .line 1091
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 1085
    return p1

    .line 1091
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1093
    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .registers 7

    .line 671
    monitor-enter p0

    .line 672
    :try_start_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez p1, :cond_10

    .line 673
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "showSessionFromSession without running voice interaction service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 676
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_25

    .line 678
    :try_start_14
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    .line 680
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 678
    return p1

    .line 680
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 682
    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p1
.end method

.method public startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 12

    .line 722
    monitor-enter p0

    .line 723
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_11

    .line 724
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "startAssistantActivity without running voice interaction service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 p1, -0x60

    monitor-exit p0

    return p1

    .line 727
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    .line 731
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startAssistantActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2b

    .line 734
    :try_start_26
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 731
    return p1

    .line 734
    :catchall_2b
    move-exception p1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 736
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw p1
.end method

.method startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    .line 219
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 223
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/16 v3, 0x10

    new-instance v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/IBinder;)V

    invoke-virtual {v2, p2, v3, v4, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1a

    .line 239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 9

    .line 1000
    monitor-enter p0

    .line 1001
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 1003
    if-eqz p4, :cond_54

    if-eqz p5, :cond_54

    if-eqz p3, :cond_54

    .line 1006
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5c

    .line 1008
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 1009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1011
    :try_start_13
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 1012
    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    .line 1013
    if-eqz p1, :cond_42

    iget-object p3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-eqz p3, :cond_42

    iget-object p3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-nez p3, :cond_26

    goto :goto_42

    .line 1021
    :cond_26
    monitor-enter p0
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_4f

    .line 1022
    :try_start_27
    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1023
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_3f

    .line 1024
    :try_start_33
    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {p3, p2, p1, p4, p5}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result p1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_4f

    .line 1028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    return p1

    .line 1023
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p1

    .line 1016
    :cond_42
    :goto_42
    const-string p1, "VoiceInteractionManagerService"

    const-string p2, "No matching sound model found in startRecognition"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4f

    .line 1017
    const/high16 p1, -0x80000000

    .line 1028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    return p1

    .line 1028
    :catchall_4f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1004
    :cond_54
    :try_start_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument(s) in startRecognition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1006
    :catchall_5c
    move-exception p1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 12

    .line 703
    monitor-enter p0

    .line 704
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_11

    .line 705
    const-string p1, "VoiceInteractionManagerService"

    const-string/jumbo p2, "startVoiceActivity without running voice interaction service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 p1, -0x60

    monitor-exit p0

    return p1

    .line 708
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    .line 712
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2b

    .line 715
    :try_start_26
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 712
    return p1

    .line 715
    :catchall_2b
    move-exception p1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 717
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_5

    return-void

    .line 246
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 248
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 6

    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService(Landroid/service/voice/IVoiceInteractionService;)V

    .line 1038
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    .line 1040
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1042
    :try_start_9
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 1044
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    return p1

    .line 1044
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1038
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->supportsLocalVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method switchImplementationIfNeeded(Z)V
    .registers 2

    .line 436
    monitor-enter p0

    .line 437
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 438
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method switchImplementationIfNeededLocked(Z)V
    .registers 6

    .line 442
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "VoiceInteractionManagerService"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchImplementation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 445
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededNoTracingLocked(Z)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2e

    .line 447
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_2e
    move-exception p1

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p1
.end method

.method switchImplementationIfNeededNoTracingLocked(Z)V
    .registers 13

    .line 452
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    if-nez v0, :cond_ca

    .line 453
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    const-string/jumbo v2, "voice_interaction_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 455
    nop

    .line 456
    nop

    .line 457
    const/4 v1, 0x0

    const-string v2, "VoiceInteractionManagerService"

    const/4 v3, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    .line 459
    :try_start_1f
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 460
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 461
    invoke-interface {v5, v4, v1, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_2d} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2f

    .line 466
    move-object v10, v4

    goto :goto_4a

    .line 462
    :catch_2f
    move-exception v4

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad voice interaction service name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    nop

    .line 465
    move-object v0, v3

    move-object v10, v0

    goto :goto_4a

    .line 469
    :cond_48
    move-object v0, v3

    move-object v10, v0

    :goto_4a
    if-eqz v10, :cond_4f

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    .line 471
    :cond_4f
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 472
    if-eqz v1, :cond_78

    .line 473
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 474
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 473
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/ShortcutServiceInternal;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 475
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v4, v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    goto :goto_8b

    .line 478
    :cond_78
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/ShortcutServiceInternal;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 479
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 483
    :cond_8b
    :goto_8b
    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_a1

    iget p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    if-ne p1, v0, :cond_a1

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 484
    invoke-virtual {p1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ca

    .line 485
    :cond_a1
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    .line 486
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_ab

    .line 487
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 489
    :cond_ab
    if-eqz v1, :cond_c7

    .line 490
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 491
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    move-object v5, p1

    move-object v8, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 492
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    goto :goto_ca

    .line 494
    :cond_c7
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 498
    :cond_ca
    :goto_ca
    return-void
.end method

.method public switchUser(I)V
    .registers 4

    .line 426
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public systemRunning(Z)V
    .registers 6

    .line 413
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    .line 415
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 417
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 419
    monitor-enter p0

    .line 420
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 421
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 422
    monitor-exit p0

    .line 423
    return-void

    .line 422
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 5

    .line 901
    const-string v0, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 902
    if-eqz p1, :cond_39

    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 908
    :try_start_b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 909
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_34

    .line 911
    :try_start_16
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz p1, :cond_25

    .line 912
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 914
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_2b

    .line 915
    const/4 p1, 0x0

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    return p1

    .line 914
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_34

    .line 917
    :cond_2e
    const/high16 p1, -0x80000000

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    return p1

    .line 920
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 903
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Model must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
