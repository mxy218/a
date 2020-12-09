.class public Lcom/android/server/soundtrigger/SoundTriggerService;
.super Lcom/android/server/SystemService;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;,
        Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;,
        Lcom/android/server/soundtrigger/SoundTriggerService$Operation;,
        Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;,
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;,
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SoundTriggerService"

.field private static final sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;


# instance fields
.field private final mCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/IRecognitionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksLock:Ljava/lang/Object;

.field final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

.field private final mLoadedModels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field private mLock:Ljava/lang/Object;

.field private final mNumOpsPerPackage:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

.field private final mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1390
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger;

    const/16 v1, 0xc8

    const-string v2, "SoundTrigger activity"

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerService;->sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    .line 187
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 189
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 190
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    .line 191
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;

    .line 192
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;

    .line 193
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 194
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerService;->sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;

    return-object p0
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    .line 1381
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1385
    return-void

    .line 1383
    :cond_9
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

.method private declared-synchronized initSoundTriggerHelper()V
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_e

    .line 223
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 225
    :cond_e
    monitor-exit p0

    return-void

    .line 221
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInitialized()Z
    .registers 3

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_f

    .line 229
    const-string v0, "SoundTriggerService"

    const-string v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 230
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 232
    :cond_f
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 227
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 205
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_f

    .line 206
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->initSoundTriggerHelper()V

    .line 207
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    goto :goto_1c

    .line 208
    :cond_f
    const/16 v0, 0x258

    if-ne v0, p1, :cond_1c

    .line 209
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 211
    :cond_1c
    :goto_1c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    const-string/jumbo v1, "soundtrigger"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 215
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 219
    return-void
.end method
