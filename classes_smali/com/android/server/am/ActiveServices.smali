.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ActiveForegroundApp;,
        Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DELAYED_SERVICE:Z

.field private static final DEBUG_DELAYED_STARTS:Z

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field private static SERVICE_RESCHEDULE:Z = false

.field static final SERVICE_START_FOREGROUND_TIMEOUT:I = 0x2710

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_POSTFIX_FREEZE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_POSTFIX_INTERCEPT:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 143
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 166
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 217
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 395
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, "maxBg":I
    :try_start_36
    const-string/jumbo v2, "ro.config.max_starting_bg"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_43} :catch_45

    move v1, v2

    .line 400
    goto :goto_46

    .line 399
    :catch_45
    move-exception v2

    .line 401
    :goto_46
    if-lez v1, :cond_4a

    .line 402
    move v0, v1

    goto :goto_53

    :cond_4a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    const/16 v0, 0x8

    :goto_53
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 404
    const-string/jumbo v0, "kona"

    const-string/jumbo v2, "ro.product.board"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_78

    .line 405
    const-string/jumbo v2, "ro.vendor.qti.am.reschedule_service"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 406
    :cond_78
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"  # I

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/app/Notification;
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 136
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 136
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 136
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 7
    .param p0, "x0"  # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z
    .param p4, "x4"  # Z
    .param p5, "x5"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 136
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appIsTopLocked(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 1345
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 459
    .local v0, "mode":I
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"  # Z
    .param p3, "hasConn"  # Z

    .line 3386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3387
    return-void

    .line 3391
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3392
    return-void

    .line 3395
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3396
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 15
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 3401
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 3402
    .local v0, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3403
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3404
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v1, v1

    iput-wide v1, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3405
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 3406
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    goto :goto_23

    .line 3408
    :cond_1e
    const/4 v1, -0x1

    iput v1, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3409
    iput-boolean v2, v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 3413
    :goto_23
    const/4 v1, 0x0

    :try_start_24
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3414
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v3, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 3419
    :cond_2f
    goto :goto_3a

    .line 3416
    :catch_30
    move-exception v3

    .line 3417
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send destroy details to servicetracker HAL"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3418
    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 3422
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_3a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3423
    .local v3, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "conni":I
    :goto_44
    if-ltz v4, :cond_b2

    .line 3424
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3425
    .local v6, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_af

    .line 3426
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 3429
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iput-boolean v5, v8, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 3430
    invoke-virtual {v8}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3432
    :try_start_5e
    iget-object v9, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v9, v10, v1, v5}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_66

    .line 3437
    goto :goto_ac

    .line 3433
    :catch_66
    move-exception v9

    .line 3434
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure disconnecting service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    iget-object v11, v11, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    iget-object v11, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3434
    const-string v11, "ActivityManager"

    invoke-static {v11, v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3425
    .end local v8  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v9  # "e":Ljava/lang/Exception;
    :goto_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 3423
    .end local v6  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7  # "i":I
    :cond_af
    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .line 3442
    .end local v4  # "conni":I
    :cond_b2
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_13b

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_13b

    .line 3443
    const/4 v4, 0x0

    .line 3444
    .local v4, "needOomAdj":Z
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "i":I
    :goto_c4
    if-ltz v6, :cond_12f

    .line 3445
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 3446
    .local v7, "ibr":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v8, :cond_f2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bringing down binding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": hasBound="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_f2
    iget-boolean v8, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v8, :cond_12c

    .line 3450
    :try_start_f6
    const-string v8, "bring down unbind"

    invoke-direct {p0, p1, v2, v8}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3451
    const/4 v4, 0x1

    .line 3452
    iput-boolean v2, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3453
    iput-boolean v2, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3454
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v9, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3455
    invoke-virtual {v9}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 3454
    invoke-interface {v8, p1, v9}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_10d} :catch_10e

    .line 3462
    goto :goto_12c

    .line 3456
    :catch_10e
    move-exception v8

    .line 3457
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when unbinding service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ActivityManager"

    invoke-static {v10, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3459
    const/4 v4, 0x0

    .line 3460
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3461
    goto :goto_12f

    .line 3444
    .end local v7  # "ibr":Lcom/android/server/am/IntentBindRecord;
    .end local v8  # "e":Ljava/lang/Exception;
    :cond_12c
    :goto_12c
    add-int/lit8 v6, v6, -0x1

    goto :goto_c4

    .line 3465
    .end local v6  # "i":I
    :cond_12f
    :goto_12f
    if-eqz v4, :cond_13b

    .line 3466
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v8, "updateOomAdj_unbindService"

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3473
    .end local v4  # "needOomAdj":Z
    :cond_13b
    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    const/16 v6, 0x4c

    if-eqz v4, :cond_1b3

    .line 3474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ActivityManager"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3477
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3478
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    .line 3479
    .local v4, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v4, :cond_16e

    .line 3480
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    iget-wide v8, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v4, v2, v7, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3483
    :cond_16e
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3485
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x42

    invoke-virtual {v7, v8, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3487
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_1b3

    .line 3488
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x45

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 3490
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3491
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 3492
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3491
    const-string/jumbo v10, "servicerecord"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3493
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3497
    .end local v4  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .end local v7  # "msg":Landroid/os/Message;
    :cond_1b3
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_1df

    .line 3498
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .line 3499
    .local v4, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bringing down "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3502
    .end local v4  # "here":Ljava/lang/RuntimeException;
    :cond_1df
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 3508
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    .line 3509
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 3513
    .local v7, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v7, :cond_220

    if-ne v7, p1, :cond_1fa

    goto :goto_220

    .line 3516
    :cond_1fa
    iget-object v1, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bringing down "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " but actually running "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3520
    :cond_220
    :goto_220
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3521
    iput v2, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3522
    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 3525
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_233
    if-ltz v8, :cond_25f

    .line 3526
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p1, :cond_25c

    .line 3527
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3528
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_25c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed pending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ActivityManager"

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_25c
    add-int/lit8 v8, v8, -0x1

    goto :goto_233

    .line 3532
    .end local v8  # "i":I
    :cond_25f
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3533
    iget-boolean v8, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v8, :cond_2a6

    .line 3534
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 3535
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v8

    .line 3536
    .local v8, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v8, :cond_27c

    .line 3537
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    iget-wide v10, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3540
    :cond_27c
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 3541
    invoke-static {v10}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3540
    invoke-virtual {v9, v10, v6, v11, v12}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3543
    const/16 v6, 0x3c

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v6, v9, v10, v11}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 3545
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v6, v9, v10, v2}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 3548
    .end local v8  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_2a6
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 3549
    iput v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 3550
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 3553
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 3554
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3555
    iget-object v6, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3557
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_343

    .line 3558
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 3559
    :try_start_2c4
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3560
    monitor-exit v6
    :try_end_2ca
    .catchall {:try_start_2c4 .. :try_end_2ca} :catchall_340

    .line 3561
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3562
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3563
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v6, :cond_2df

    .line 3564
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3566
    :cond_2df
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_325

    .line 3567
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v6, v2}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3569
    :try_start_2ea
    const-string v6, "destroy"

    invoke-direct {p0, p1, v2, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3570
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3571
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 3572
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v9, "updateOomAdj_unbindService"

    invoke-virtual {v6, v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3574
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_307} :catch_308

    goto :goto_324

    .line 3575
    :catch_308
    move-exception v5

    .line 3576
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when destroying service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ActivityManager"

    invoke-static {v8, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3578
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3579
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_324
    goto :goto_35d

    .line 3581
    :cond_325
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_35d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed service that has no process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35d

    .line 3560
    :catchall_340
    move-exception v1

    :try_start_341
    monitor-exit v6
    :try_end_342
    .catchall {:try_start_341 .. :try_end_342} :catchall_340

    throw v1

    .line 3585
    :cond_343
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_35d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed service that is not running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_35d
    :goto_35d
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_36a

    .line 3590
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 3593
    :cond_36a
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v5, v5, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v5, :cond_377

    .line 3594
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3597
    :cond_377
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 3598
    .local v5, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3599
    .local v8, "now":J
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v6, :cond_39c

    .line 3600
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v2, v5, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3601
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v2, v5, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3602
    iget v6, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v6, :cond_39c

    .line 3603
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3604
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3608
    :cond_39c
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3609
    return-void
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 38
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"  # I
    .param p3, "execInFg"  # Z
    .param p4, "whileRestarting"  # Z
    .param p5, "permissionsReviewRequired"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2924
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p3

    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_16

    .line 2925
    invoke-direct {v11, v12, v13, v15}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2926
    return-object v14

    .line 2929
    :cond_16
    if-nez p4, :cond_21

    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2931
    return-object v14

    .line 2934
    :cond_21
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_4f

    .line 2935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bringing up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_4f
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2941
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2945
    :cond_5a
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_85

    .line 2946
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REM FR DELAY LIST (bring up): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_78
    iget v0, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v11, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2948
    iput-boolean v15, v12, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 2953
    :cond_85
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 2954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2957
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2958
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2960
    return-object v0

    .line 2965
    .end local v0  # "msg":Ljava/lang/String;
    :cond_d8
    :try_start_d8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v1, v15, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_e3} :catch_106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_e3} :catch_e4

    goto :goto_107

    .line 2968
    :catch_e4
    move-exception v0

    .line 2969
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 2967
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :catch_106
    move-exception v0

    .line 2971
    :goto_107
    nop

    .line 2973
    :goto_108
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_112

    const/4 v0, 0x1

    goto :goto_113

    :cond_112
    move v0, v15

    :goto_113
    move/from16 v16, v0

    .line 2974
    .local v16, "isolated":Z
    iget-object v10, v12, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2975
    .local v10, "procName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/HostingRecord;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    const-string/jumbo v2, "service"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object v1, v0

    .line 2978
    .local v1, "hostingRecord":Lcom/android/server/am/HostingRecord;
    if-nez v16, :cond_1b0

    .line 2979
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10, v2, v15}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 2980
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_154

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bringUpServiceLocked: appInfo.uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " app="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager_MU"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_154
    invoke-direct {v11, v2}, Lcom/android/server/am/ActiveServices;->hook_freezeBringupServiceProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 2986
    const-string v0, ""

    .line 2987
    .local v0, "appendMsg":Ljava/lang/String;
    if-eqz v2, :cond_162

    .line 2988
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2990
    :cond_162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeze: Unable to bringup freezing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2991
    .local v3, "msg":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2992
    return-object v3

    .line 2996
    .end local v0  # "appendMsg":Ljava/lang/String;
    .end local v3  # "msg":Ljava/lang/String;
    :cond_177
    if-eqz v2, :cond_1ac

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1ac

    .line 2998
    :try_start_17d
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2999
    invoke-direct {v11, v12, v2, v13}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_18f
    .catch Landroid/os/TransactionTooLargeException; {:try_start_17d .. :try_end_18f} :catch_1aa
    .catch Landroid/os/RemoteException; {:try_start_17d .. :try_end_18f} :catch_190

    .line 3000
    return-object v14

    .line 3003
    :catch_190
    move-exception v0

    .line 3004
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3005
    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_1ac

    .line 3001
    :catch_1aa
    move-exception v0

    .line 3002
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    throw v0

    .line 3030
    .end local v0  # "e":Landroid/os/TransactionTooLargeException;
    :cond_1ac
    :goto_1ac
    move-object/from16 v17, v1

    move-object v9, v2

    goto :goto_1e5

    .line 3017
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1b0
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3018
    .restart local v2  # "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_1cc

    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3019
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 3020
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;

    move-result-object v1

    .line 3022
    :cond_1cc
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e2

    .line 3023
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ServiceRecord;->definingUid:I

    invoke-static {v0, v3, v4}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;

    move-result-object v0

    move-object/from16 v17, v0

    move-object v9, v2

    .end local v1  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .local v0, "hostingRecord":Lcom/android/server/am/HostingRecord;
    goto :goto_1e5

    .line 3022
    .end local v0  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local v1  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    :cond_1e2
    move-object/from16 v17, v1

    move-object v9, v2

    .line 3030
    .end local v1  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    .local v17, "hostingRecord":Lcom/android/server/am/HostingRecord;
    :goto_1e5
    const/4 v0, 0x0

    .line 3031
    .local v0, "service_intent":Landroid/content/Intent;
    const-string v1, ""

    .line 3032
    .local v1, "callerPkg":Ljava/lang/String;
    const-string v2, ""

    .line 3033
    .local v2, "calleePkg":Ljava/lang/String;
    const-string v3, ""

    .line 3034
    .local v3, "sProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3035
    .local v4, "calleeUid":I
    nop

    .line 3036
    iget-object v5, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3037
    .end local v2  # "calleePkg":Ljava/lang/String;
    .local v8, "calleePkg":Ljava/lang/String;
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3038
    .end local v4  # "calleeUid":I
    .local v7, "calleeUid":I
    iget-object v6, v12, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3039
    .end local v3  # "sProcessName":Ljava/lang/String;
    .local v6, "sProcessName":Ljava/lang/String;
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 3041
    .end local v0  # "service_intent":Landroid/content/Intent;
    .local v5, "service_intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getRealCallingPid()I

    move-result v4

    .line 3043
    .local v4, "realCallingPid":I
    const/4 v2, 0x0

    .line 3044
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 3045
    :try_start_20b
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_213
    .catchall {:try_start_20b .. :try_end_213} :catchall_412

    move-object v2, v0

    .line 3046
    if-eqz v2, :cond_22d

    .line 3047
    :try_start_216
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_21a
    .catchall {:try_start_216 .. :try_end_21a} :catchall_21c

    move-object v1, v0

    .end local v1  # "callerPkg":Ljava/lang/String;
    .local v0, "callerPkg":Ljava/lang/String;
    goto :goto_22d

    .line 3049
    .end local v0  # "callerPkg":Ljava/lang/String;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    :catchall_21c
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto/16 :goto_421

    :cond_22d
    :goto_22d
    :try_start_22d
    monitor-exit v3
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_3ff

    .line 3051
    const-string v0, ""

    .line 3052
    .local v0, "calleeClass":Ljava/lang/String;
    if-eqz v5, :cond_240

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_240

    .line 3053
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 3055
    :cond_240
    const/4 v3, 0x0

    .line 3056
    .local v3, "isRunning":Z
    if-eqz v9, :cond_24a

    iget-object v15, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_24a

    .line 3057
    const/4 v3, 0x1

    move v15, v3

    goto :goto_24b

    .line 3060
    :cond_24a
    move v15, v3

    .end local v3  # "isRunning":Z
    .local v15, "isRunning":Z
    :goto_24b
    iget-object v3, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v3, v14, v1}, Lcom/android/server/am/ActivityManagerService;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v14

    .line 3061
    .local v14, "isTop":Z
    nop

    .line 3072
    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;

    move-result-object v26

    .line 3074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    const/16 v30, 0x0

    .line 3062
    const-string/jumbo v24, "retrieve_service"

    move/from16 v18, v14

    move-object/from16 v19, v1

    move-object/from16 v20, v8

    move/from16 v21, v7

    move-object/from16 v22, v6

    move-object/from16 v23, v5

    move/from16 v25, v4

    move/from16 v27, v4

    move/from16 v31, v15

    invoke-static/range {v18 .. v31}, Lcom/android/server/hips/intercept/Interception;->isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z

    move-result v3

    .line 3077
    .local v3, "isIntercept":Z
    move-object/from16 v18, v2

    .end local v2  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v18, "processRecord":Lcom/android/server/am/ProcessRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5  # "service_intent":Landroid/content/Intent;
    .local v19, "service_intent":Landroid/content/Intent;
    const-string v5, "INTERCEPT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " call "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from service "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fg "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isIntercept "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3078
    .local v5, "events":Ljava/lang/String;
    const v2, 0xdc3372

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3079
    const-string v20, "bringUpServiceLocked"

    move-object v2, v1

    .end local v1  # "callerPkg":Ljava/lang/String;
    .local v2, "callerPkg":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v21, v2

    .end local v2  # "callerPkg":Ljava/lang/String;
    .local v21, "callerPkg":Ljava/lang/String;
    move/from16 v22, v3

    .end local v3  # "isIntercept":Z
    .local v22, "isIntercept":Z
    move-object/from16 v3, v21

    move/from16 v23, v4

    .end local v4  # "realCallingPid":I
    .local v23, "realCallingPid":I
    move-object v4, v8

    move-object/from16 v24, v19

    move-object/from16 v19, v5

    .end local v5  # "events":Ljava/lang/String;
    .local v19, "events":Ljava/lang/String;
    .local v24, "service_intent":Landroid/content/Intent;
    move/from16 v5, v23

    move-object/from16 v25, v6

    .end local v6  # "sProcessName":Ljava/lang/String;
    .local v25, "sProcessName":Ljava/lang/String;
    move v6, v7

    move/from16 v26, v7

    .end local v7  # "calleeUid":I
    .local v26, "calleeUid":I
    move-object/from16 v27, v8

    .end local v8  # "calleePkg":Ljava/lang/String;
    .local v27, "calleePkg":Ljava/lang/String;
    move-object/from16 v8, v24

    move-object/from16 v28, v9

    .end local v9  # "app":Lcom/android/server/am/ProcessRecord;
    .local v28, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v9, v22

    move-object/from16 v29, v10

    .end local v10  # "procName":Ljava/lang/String;
    .local v29, "procName":Ljava/lang/String;
    move-object/from16 v10, v20

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->hook_retrieveService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZLjava/lang/String;)V

    .line 3081
    if-eqz v22, :cond_327

    .line 3082
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v1, :cond_321

    .line 3083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v21

    .end local v21  # "callerPkg":Ljava/lang/String;
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " skipped <bringUpServiceLocked> service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v24

    .end local v24  # "service_intent":Landroid/content/Intent;
    .local v9, "service_intent":Landroid/content/Intent;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3083
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_325

    .line 3082
    .end local v9  # "service_intent":Landroid/content/Intent;
    .end local v10  # "callerPkg":Ljava/lang/String;
    .restart local v21  # "callerPkg":Ljava/lang/String;
    .restart local v24  # "service_intent":Landroid/content/Intent;
    :cond_321
    move-object/from16 v10, v21

    move-object/from16 v9, v24

    .line 3086
    .end local v21  # "callerPkg":Ljava/lang/String;
    .end local v24  # "service_intent":Landroid/content/Intent;
    .restart local v9  # "service_intent":Landroid/content/Intent;
    .restart local v10  # "callerPkg":Ljava/lang/String;
    :goto_325
    const/4 v1, 0x0

    return-object v1

    .line 3092
    .end local v9  # "service_intent":Landroid/content/Intent;
    .end local v10  # "callerPkg":Ljava/lang/String;
    .restart local v21  # "callerPkg":Ljava/lang/String;
    .restart local v24  # "service_intent":Landroid/content/Intent;
    :cond_327
    move-object/from16 v10, v21

    move-object/from16 v9, v24

    .end local v21  # "callerPkg":Ljava/lang/String;
    .end local v24  # "service_intent":Landroid/content/Intent;
    .restart local v9  # "service_intent":Landroid/content/Intent;
    .restart local v10  # "callerPkg":Ljava/lang/String;
    if-nez v28, :cond_38e

    if-nez p5, :cond_38e

    .line 3093
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, v29

    move/from16 v5, p2

    move-object/from16 v6, v17

    move/from16 v8, v16

    move-object/from16 v21, v9

    .end local v9  # "service_intent":Landroid/content/Intent;
    .local v21, "service_intent":Landroid/content/Intent;
    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object v9, v1

    .end local v28  # "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_387

    .line 3095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3098
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3099
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3101
    return-object v1

    .line 3103
    .end local v1  # "msg":Ljava/lang/String;
    :cond_387
    if-eqz v16, :cond_38b

    .line 3104
    iput-object v9, v12, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3108
    :cond_38b
    move-object/from16 v28, v9

    goto :goto_390

    .line 3092
    .end local v21  # "service_intent":Landroid/content/Intent;
    .local v9, "service_intent":Landroid/content/Intent;
    .restart local v28  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_38e
    move-object/from16 v21, v9

    .line 3108
    .end local v9  # "service_intent":Landroid/content/Intent;
    .restart local v21  # "service_intent":Landroid/content/Intent;
    :goto_390
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_3c8

    .line 3109
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_3bb

    .line 3110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Whitelisting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for fg-service launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_3bb
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v3, 0x2710

    const-string v5, "fg-service-launch"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 3117
    :cond_3c8
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d5

    .line 3118
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    :cond_3d5
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v1, :cond_3fd

    .line 3123
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3124
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_3fd

    .line 3125
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_3fa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying delayed stop (in bring up): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    :cond_3fa
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3131
    :cond_3fd
    const/4 v1, 0x0

    return-object v1

    .line 3049
    .end local v0  # "calleeClass":Ljava/lang/String;
    .end local v14  # "isTop":Z
    .end local v15  # "isRunning":Z
    .end local v18  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v19  # "events":Ljava/lang/String;
    .end local v21  # "service_intent":Landroid/content/Intent;
    .end local v22  # "isIntercept":Z
    .end local v23  # "realCallingPid":I
    .end local v25  # "sProcessName":Ljava/lang/String;
    .end local v26  # "calleeUid":I
    .end local v27  # "calleePkg":Ljava/lang/String;
    .end local v28  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v29  # "procName":Ljava/lang/String;
    .local v1, "callerPkg":Ljava/lang/String;
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "realCallingPid":I
    .local v5, "service_intent":Landroid/content/Intent;
    .restart local v6  # "sProcessName":Ljava/lang/String;
    .restart local v7  # "calleeUid":I
    .restart local v8  # "calleePkg":Ljava/lang/String;
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "procName":Ljava/lang/String;
    :catchall_3ff
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object v10, v1

    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "realCallingPid":I
    .end local v5  # "service_intent":Landroid/content/Intent;
    .end local v6  # "sProcessName":Ljava/lang/String;
    .end local v7  # "calleeUid":I
    .end local v8  # "calleePkg":Ljava/lang/String;
    .end local v9  # "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerPkg":Ljava/lang/String;
    .restart local v18  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v21  # "service_intent":Landroid/content/Intent;
    .restart local v23  # "realCallingPid":I
    .restart local v25  # "sProcessName":Ljava/lang/String;
    .restart local v26  # "calleeUid":I
    .restart local v27  # "calleePkg":Ljava/lang/String;
    .restart local v28  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29  # "procName":Ljava/lang/String;
    goto :goto_421

    .end local v18  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v21  # "service_intent":Landroid/content/Intent;
    .end local v23  # "realCallingPid":I
    .end local v25  # "sProcessName":Ljava/lang/String;
    .end local v26  # "calleeUid":I
    .end local v27  # "calleePkg":Ljava/lang/String;
    .end local v28  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v29  # "procName":Ljava/lang/String;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    .restart local v2  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "realCallingPid":I
    .restart local v5  # "service_intent":Landroid/content/Intent;
    .restart local v6  # "sProcessName":Ljava/lang/String;
    .restart local v7  # "calleeUid":I
    .restart local v8  # "calleePkg":Ljava/lang/String;
    .restart local v9  # "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "procName":Ljava/lang/String;
    :catchall_412
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .end local v4  # "realCallingPid":I
    .end local v5  # "service_intent":Landroid/content/Intent;
    .end local v6  # "sProcessName":Ljava/lang/String;
    .end local v7  # "calleeUid":I
    .end local v8  # "calleePkg":Ljava/lang/String;
    .end local v9  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v10  # "procName":Ljava/lang/String;
    .restart local v21  # "service_intent":Landroid/content/Intent;
    .restart local v23  # "realCallingPid":I
    .restart local v25  # "sProcessName":Ljava/lang/String;
    .restart local v26  # "calleeUid":I
    .restart local v27  # "calleePkg":Ljava/lang/String;
    .restart local v28  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29  # "procName":Ljava/lang/String;
    :goto_421
    :try_start_421
    monitor-exit v3
    :try_end_422
    .catchall {:try_start_421 .. :try_end_422} :catchall_423

    throw v0

    :catchall_423
    move-exception v0

    goto :goto_421
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .registers 11
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"  # Z
    .param p3, "why"  # Ljava/lang/String;

    .line 2598
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v1, " of "

    const-string v2, ">>> EXECUTING "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 2600
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 2613
    .local v0, "timeoutNeeded":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_87

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_87

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_87

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2616
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const/4 v0, 0x0

    .line 2621
    :cond_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2622
    .local v1, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v4, 0x1

    if-nez v3, :cond_c7

    .line 2623
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2624
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 2625
    .local v3, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v3, :cond_a3

    .line 2626
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 2628
    :cond_a3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_df

    .line 2629
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2630
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v6, p2

    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2631
    if-eqz v0, :cond_df

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ne v5, v4, :cond_df

    .line 2632
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_df

    .line 2635
    .end local v3  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_c7
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_df

    if-eqz p2, :cond_df

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_df

    .line 2636
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2637
    if-eqz v0, :cond_e0

    .line 2638
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e0

    .line 2635
    :cond_df
    :goto_df
    nop

    .line 2641
    :cond_e0
    :goto_e0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2642
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2643
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2644
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 1570
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_37

    .line 1575
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1576
    .local v0, "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_34

    .line 1577
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_34

    .line 1578
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1579
    .local v2, "other":Lcom/android/server/am/ServiceRecord;
    if-eq v2, p1, :cond_31

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_31

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1580
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1582
    return-void

    .line 1577
    .end local v2  # "other":Lcom/android/server/am/ServiceRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1586
    .end local v1  # "i":I
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1588
    .end local v0  # "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_37
    return-void
.end method

.method private checkServiceFrozen(Lcom/android/server/am/ServiceRecord;)Z
    .registers 15
    .param p1, "s"  # Lcom/android/server/am/ServiceRecord;

    .line 5228
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 5229
    const-string v1, "ActivityManager"

    const-string v2, "ServiceRecord can not be null in freezeBind!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    return v0

    .line 5233
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5234
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_1a
    if-ge v2, v1, :cond_6c

    .line 5235
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 5236
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5237
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_31
    if-ge v5, v4, :cond_69

    .line 5238
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 5240
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_66

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v7

    if-eqz v7, :cond_66

    .line 5241
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v7, :cond_5d

    .line 5242
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    .line 5243
    .local v7, "packes":[Ljava/lang/String;
    array-length v9, v7

    move v10, v0

    :goto_4c
    if-ge v10, v9, :cond_5c

    aget-object v11, v7, v10

    .line 5244
    .local v11, "name":Ljava/lang/String;
    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 5245
    return v8

    .line 5243
    .end local v11  # "name":Ljava/lang/String;
    :cond_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 5248
    .end local v7  # "packes":[Ljava/lang/String;
    :cond_5c
    goto :goto_66

    .line 5249
    :cond_5d
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v9, :cond_66

    .line 5250
    return v8

    .line 5237
    .end local v6  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 5234
    .end local v3  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4  # "NA":I
    .end local v5  # "ia":I
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 5256
    .end local v2  # "ip":I
    :cond_6c
    return v0
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 2903
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_39

    .line 2906
    const/4 v0, 0x0

    .line 2907
    .local v0, "stillTracking":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_22

    .line 2908
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v2, v3, :cond_1f

    .line 2909
    const/4 v0, 0x1

    .line 2910
    goto :goto_22

    .line 2907
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2913
    .end local v1  # "i":I
    :cond_22
    :goto_22
    if-nez v0, :cond_39

    .line 2914
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2914
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 2916
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 2919
    .end local v0  # "stillTracking":Z
    :cond_39
    return-void
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "evenPersistent"  # Z
    .param p4, "doit"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .line 3929
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    .line 3930
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_90

    .line 3931
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3932
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_2a

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3933
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz p2, :cond_2a

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3935
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v4, v2

    .line 3936
    .local v4, "sameComponent":Z
    :goto_2b
    if-eqz v4, :cond_8c

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3b

    if-nez p3, :cond_3b

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3937
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 3938
    :cond_3b
    if-nez p4, :cond_3e

    .line 3939
    return v2

    .line 3941
    :cond_3e
    const/4 v0, 0x1

    .line 3942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_76

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_76

    .line 3944
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3945
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3946
    iget-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v5, :cond_76

    .line 3947
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3950
    :cond_76
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3951
    iput-object v5, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3952
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_87

    .line 3953
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 3955
    :cond_87
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3930
    .end local v3  # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4  # "sameComponent":Z
    :cond_8c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_7

    .line 3958
    .end local v1  # "i":I
    :cond_90
    return v0
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "smap"  # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 1249
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1250
    .local v0, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-eqz v0, :cond_4e

    .line 1251
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1252
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_4e

    .line 1253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1254
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_27

    const-string v1, "ActivityManager"

    const-string v3, "Ended running of service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_27
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1257
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1259
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_4e

    .line 1260
    :cond_3e
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_4e

    .line 1261
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1265
    :cond_4e
    :goto_4e
    return-void
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 11
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "pw"  # Ljava/io/PrintWriter;
    .param p4, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"  # [Ljava/lang/String;
    .param p6, "dumpAll"  # Z

    .line 5009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5010
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5011
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5012
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5013
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5014
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5015
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_45

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4a

    .line 5016
    :cond_45
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    :goto_4a
    if-eqz p6, :cond_4f

    .line 5018
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5020
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5021
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c6

    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_c6

    .line 5022
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5025
    :try_start_68
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_98

    .line 5027
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_6d
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 5028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_93

    .line 5031
    :try_start_8f
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5032
    goto :goto_c6

    .line 5031
    :catchall_93
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .end local v0  # "innerPrefix":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "prefix":Ljava/lang/String;
    .end local p2  # "fd":Ljava/io/FileDescriptor;
    .end local p3  # "pw":Ljava/io/PrintWriter;
    .end local p4  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p5  # "args":[Ljava/lang/String;
    .end local p6  # "dumpAll":Z
    throw v2
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_98} :catch_98

    .line 5035
    .end local v1  # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0  # "innerPrefix":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "prefix":Ljava/lang/String;
    .restart local p2  # "fd":Ljava/io/FileDescriptor;
    .restart local p3  # "pw":Ljava/io/PrintWriter;
    .restart local p4  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p5  # "args":[Ljava/lang/String;
    .restart local p6  # "dumpAll":Z
    :catch_98
    move-exception v1

    .line 5036
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Got a RemoteException while dumping the service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6

    .line 5033
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_ae
    move-exception v1

    .line 5034
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Failure while dumping the service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5039
    .end local v1  # "e":Ljava/io/IOException;
    :cond_c6
    :goto_c6
    return-void

    .line 5020
    :catchall_c7
    move-exception v2

    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "userId"  # I

    .line 2191
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 2192
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 5
    .param p1, "callingUser"  # I

    .line 444
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 445
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_1d

    .line 446
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    move-object v0, v1

    .line 447
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    :cond_1d
    return-object v0
.end method

.method private getServicetrackerInstance()Z
    .registers 5

    .line 414
    const-string v0, "ActivityManager"

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v1, :cond_2a

    .line 416
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->getService(Z)Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_d} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_1a

    .line 419
    :catch_e
    move-exception v2

    .line 420
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_18

    const-string v3, "Failed to get servicetracker interface"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    :cond_18
    return v1

    .line 417
    .end local v2  # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v2

    .line 422
    :goto_1a
    nop

    .line 423
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v2, :cond_2a

    .line 424
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_29

    const-string/jumbo v2, "servicetracker HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_29
    return v1

    .line 428
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method private hook_freezeBindServiceProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;I)Z
    .registers 15
    .param p1, "s"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "callerApp"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "service"  # Landroid/content/Intent;
    .param p4, "flags"  # I

    .line 5151
    const/4 v0, 0x0

    .line 5152
    .local v0, "ifReturnNow":Z
    and-int/lit16 v1, p4, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v3

    .line 5153
    .local v1, "isFromSync":Z
    :goto_a
    const-string v4, "ActivityManager"

    if-nez p1, :cond_15

    .line 5154
    const-string v2, "ServiceRecord can not be null here in freezeBind"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21a

    .line 5157
    :cond_15
    if-eqz p3, :cond_100

    .line 5158
    iget-object v5, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v5}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v5

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_24

    move v5, v2

    goto :goto_25

    :cond_24
    move v5, v3

    .line 5160
    .local v5, "isFromJobService":Z
    :goto_25
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v6, :cond_62

    .line 5161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Caller:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    if-nez p2, :cond_39

    move-object v8, v7

    goto :goto_3d

    :cond_39
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isJob:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " Callees:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5162
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-nez v8, :cond_52

    goto :goto_58

    :cond_52
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5161
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    :cond_62
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v7, " isFromSync:"

    const-string v8, " is freezing! isFromJobService: "

    if-eqz v6, :cond_d0

    .line 5165
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v6, :cond_94

    .line 5166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " freeze="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    :cond_94
    if-nez v5, :cond_98

    if-eqz v1, :cond_100

    :cond_98
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v6

    if-eqz v6, :cond_100

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_100

    .line 5169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped job bind as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    const/4 v0, 0x1

    .line 5172
    return v0

    .line 5175
    :cond_d0
    if-nez v5, :cond_d4

    if-eqz v1, :cond_100

    :cond_d4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->checkServiceFrozen(Lcom/android/server/am/ServiceRecord;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 5176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped job bind with process null as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    const/4 v0, 0x1

    .line 5179
    return v0

    .line 5183
    .end local v5  # "isFromJobService":Z
    :cond_100
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, " has been freezed"

    if-eqz v5, :cond_15b

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_15b

    .line 5184
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v5

    if-eqz v5, :cond_21a

    .line 5185
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isFreezeInteractive()Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->isCallerAppVisible(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_12c

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 5186
    :cond_12c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-array v2, v2, [I

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v6, v2, v3

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    goto/16 :goto_21a

    .line 5188
    :cond_13f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze: binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    const/4 v0, 0x1

    goto/16 :goto_21a

    .line 5193
    :cond_15b
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_21a

    if-eqz p2, :cond_21a

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_21a

    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v7, :cond_21a

    .line 5194
    const/4 v5, 0x0

    .line 5195
    .local v5, "toApp":Lcom/android/server/am/ProcessRecord;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_185

    .line 5196
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 5198
    :cond_185
    if-eqz v5, :cond_1d0

    .line 5199
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v7

    if-eqz v7, :cond_21a

    .line 5200
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isFreezeInteractive()Z

    move-result v7

    if-eqz v7, :cond_1b7

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->isCallerAppVisible(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-nez v7, :cond_1a5

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_1b7

    .line 5201
    :cond_1a5
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    new-array v2, v2, [I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v7, v2, v3

    invoke-virtual {v4, v6, v2}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    goto :goto_21a

    .line 5203
    :cond_1b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze: binding create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5204
    const/4 v0, 0x1

    goto :goto_21a

    .line 5209
    :cond_1d0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->checkServiceFrozen(Lcom/android/server/am/ServiceRecord;)Z

    move-result v7

    if-eqz v7, :cond_21a

    .line 5210
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isFreezeInteractive()Z

    move-result v7

    if-eqz v7, :cond_200

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->isCallerAppVisible(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-nez v7, :cond_1ee

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_200

    .line 5211
    :cond_1ee
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    new-array v2, v2, [I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v7, v2, v3

    invoke-virtual {v4, v6, v2}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    goto :goto_21a

    .line 5213
    :cond_200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze: binding create package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    const/4 v0, 0x1

    .line 5223
    .end local v5  # "toApp":Lcom/android/server/am/ProcessRecord;
    :cond_21a
    :goto_21a
    return v0
.end method

.method private hook_freezeBringupServiceProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 5261
    const/4 v0, 0x0

    .line 5263
    .local v0, "ifReturnNow":Z
    const-string v1, "ActivityManager"

    if-eqz p1, :cond_42

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_42

    .line 5264
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 5265
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isFreezeInteractive()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5266
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    goto :goto_4b

    .line 5268
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze: bring up service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has been freezed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    const/4 v0, 0x1

    goto :goto_4b

    .line 5273
    :cond_42
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v2, :cond_4b

    const-string v2, "Freeze: not process bringup because null app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    :cond_4b
    :goto_4b
    return v0
.end method

.method private hook_freezeStartServiceProcess(Lcom/android/server/am/ServiceRecord;IILandroid/app/IApplicationThread;Landroid/content/Intent;)Z
    .registers 29
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "caller"  # Landroid/app/IApplicationThread;
    .param p5, "service"  # Landroid/content/Intent;

    .line 5047
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    const-string v7, "ActivityManager"

    if-eqz v6, :cond_36

    .line 5048
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Freeze: try to start service caller:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", callingPid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callingUid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    :cond_36
    const/4 v6, 0x0

    .line 5053
    .local v6, "ifReturnNow":Z
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v9, " isFromNotification = "

    const-string v10, " flag = "

    const-string/jumbo v11, "service = "

    const/high16 v12, 0x200000

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v8, :cond_110

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_110

    .line 5055
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 5056
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isFreezeInteractive()Z

    move-result v8

    if-eqz v8, :cond_ad

    if-ne v2, v13, :cond_61

    if-eqz v4, :cond_ad

    .line 5058
    :cond_61
    if-eqz v4, :cond_98

    .line 5059
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 5060
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_85

    invoke-direct {v0, v8}, Lcom/android/server/am/ActiveServices;->isCallerAppVisible(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-nez v9, :cond_85

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v9, v10, :cond_85

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v9}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_85

    .line 5061
    const/4 v6, 0x1

    goto :goto_96

    .line 5063
    :cond_85
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    new-array v11, v15, [I

    iget-object v12, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v12, v11, v14

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    .line 5065
    .end local v8  # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_96
    goto/16 :goto_21f

    .line 5066
    :cond_98
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    new-array v10, v15, [I

    iget-object v11, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v11, v10, v14

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    move/from16 v19, v6

    goto/16 :goto_21d

    .line 5069
    :cond_ad
    if-ne v2, v13, :cond_104

    if-nez v4, :cond_104

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v8, v3, :cond_104

    .line 5071
    if-eqz v5, :cond_101

    .line 5072
    iget-object v8, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v8}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v8

    .line 5073
    .local v8, "flag":I
    and-int/2addr v12, v8

    if-eqz v12, :cond_c4

    move v12, v15

    goto :goto_c5

    :cond_c4
    move v12, v14

    .line 5074
    .local v12, "isFromNotification":Z
    :goto_c5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    if-nez v12, :cond_f2

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v9}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_f0

    goto :goto_f2

    .line 5078
    :cond_f0
    const/4 v6, 0x1

    goto :goto_ff

    .line 5076
    :cond_f2
    :goto_f2
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    new-array v10, v15, [I

    iget-object v11, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v11, v10, v14

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    .line 5080
    .end local v8  # "flag":I
    .end local v12  # "isFromNotification":Z
    :goto_ff
    goto/16 :goto_21f

    .line 5081
    :cond_101
    const/4 v6, 0x1

    goto/16 :goto_21f

    .line 5084
    :cond_104
    const-string v8, "Freeze: not process start service as invalid callingUid"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    const/4 v6, 0x1

    goto/16 :goto_21f

    .line 5055
    :cond_10c
    move/from16 v19, v6

    goto/16 :goto_21d

    .line 5092
    :cond_110
    if-ne v2, v13, :cond_212

    if-nez v4, :cond_212

    .line 5094
    const/4 v8, 0x0

    .line 5095
    .local v8, "ifBelongToFreezed":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5096
    .local v13, "uidFreezedProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v14, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 5097
    .local v14, "NP":I
    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v8

    move/from16 v8, v22

    .local v8, "ip":I
    .local v17, "ifBelongToFreezed":Z
    :goto_130
    if-ge v8, v14, :cond_206

    .line 5098
    iget-object v15, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 5099
    .local v15, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 5100
    .local v12, "NA":I
    const/16 v19, 0x0

    move/from16 v2, v19

    .local v2, "ia":I
    :goto_14a
    if-ge v2, v12, :cond_1e3

    .line 5101
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 5102
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v19

    if-eqz v19, :cond_1cb

    move/from16 v19, v6

    .end local v6  # "ifReturnNow":Z
    .local v19, "ifReturnNow":Z
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, v3, :cond_1c4

    .line 5103
    if-eqz v5, :cond_1bc

    .line 5104
    iget-object v6, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v6}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v6

    .line 5105
    .local v6, "flag":I
    const/high16 v18, 0x200000

    and-int v20, v6, v18

    if-eqz v20, :cond_171

    const/16 v20, 0x1

    goto :goto_173

    :cond_171
    const/16 v20, 0x0

    :goto_173
    move/from16 v21, v20

    .line 5106
    .local v21, "isFromNotification":Z
    move/from16 v20, v12

    .end local v12  # "NA":I
    .local v20, "NA":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v21

    .end local v21  # "isFromNotification":Z
    .local v5, "isFromNotification":Z
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    if-nez v5, :cond_1ad

    iget-object v12, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_1a8

    iget-object v12, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v12}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-eqz v12, :cond_1a8

    goto :goto_1ad

    .line 5111
    :cond_1a8
    const/4 v5, 0x1

    .line 5113
    .end local v6  # "flag":I
    .end local v17  # "ifBelongToFreezed":Z
    .local v5, "ifBelongToFreezed":Z
    move v0, v5

    const/16 v16, 0x0

    goto :goto_1ed

    .line 5108
    .local v5, "isFromNotification":Z
    .restart local v6  # "flag":I
    .restart local v17  # "ifBelongToFreezed":Z
    :cond_1ad
    :goto_1ad
    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v16, 0x0

    aput v0, v1, v16

    invoke-virtual {v12, v3, v1}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    .line 5109
    goto :goto_1eb

    .line 5114
    .end local v5  # "isFromNotification":Z
    .end local v6  # "flag":I
    .end local v20  # "NA":I
    .restart local v12  # "NA":I
    :cond_1bc
    move/from16 v20, v12

    const/16 v16, 0x0

    const/high16 v18, 0x200000

    .end local v12  # "NA":I
    .restart local v20  # "NA":I
    const/4 v0, 0x1

    .line 5116
    .end local v17  # "ifBelongToFreezed":Z
    .local v0, "ifBelongToFreezed":Z
    goto :goto_1ed

    .line 5102
    .end local v0  # "ifBelongToFreezed":Z
    .end local v20  # "NA":I
    .restart local v12  # "NA":I
    .restart local v17  # "ifBelongToFreezed":Z
    :cond_1c4
    move/from16 v20, v12

    const/16 v16, 0x0

    const/high16 v18, 0x200000

    .end local v12  # "NA":I
    .restart local v20  # "NA":I
    goto :goto_1d3

    .end local v19  # "ifReturnNow":Z
    .end local v20  # "NA":I
    .local v6, "ifReturnNow":Z
    .restart local v12  # "NA":I
    :cond_1cb
    move/from16 v19, v6

    move/from16 v20, v12

    const/16 v16, 0x0

    const/high16 v18, 0x200000

    .line 5100
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "ifReturnNow":Z
    .end local v12  # "NA":I
    .restart local v19  # "ifReturnNow":Z
    .restart local v20  # "NA":I
    :goto_1d3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, v19

    move/from16 v12, v20

    goto/16 :goto_14a

    .end local v19  # "ifReturnNow":Z
    .end local v20  # "NA":I
    .restart local v6  # "ifReturnNow":Z
    .restart local v12  # "NA":I
    :cond_1e3
    move/from16 v19, v6

    move/from16 v20, v12

    const/16 v16, 0x0

    const/high16 v18, 0x200000

    .line 5119
    .end local v2  # "ia":I
    .end local v6  # "ifReturnNow":Z
    .end local v12  # "NA":I
    .restart local v19  # "ifReturnNow":Z
    .restart local v20  # "NA":I
    :goto_1eb
    move/from16 v0, v17

    .end local v17  # "ifBelongToFreezed":Z
    .restart local v0  # "ifBelongToFreezed":Z
    :goto_1ed
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f1

    .line 5120
    goto :goto_20a

    .line 5097
    .end local v15  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v20  # "NA":I
    :cond_1f1
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v17, v0

    move v15, v1

    move/from16 v12, v18

    move/from16 v6, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_130

    .end local v0  # "ifBelongToFreezed":Z
    .end local v19  # "ifReturnNow":Z
    .restart local v6  # "ifReturnNow":Z
    .restart local v17  # "ifBelongToFreezed":Z
    :cond_206
    move/from16 v19, v6

    .end local v6  # "ifReturnNow":Z
    .restart local v19  # "ifReturnNow":Z
    move/from16 v0, v17

    .line 5124
    .end local v8  # "ip":I
    .end local v17  # "ifBelongToFreezed":Z
    .restart local v0  # "ifBelongToFreezed":Z
    :goto_20a
    if-eqz v0, :cond_20f

    .line 5125
    const/4 v1, 0x1

    move v6, v1

    .end local v19  # "ifReturnNow":Z
    .local v1, "ifReturnNow":Z
    goto :goto_211

    .line 5124
    .end local v1  # "ifReturnNow":Z
    .restart local v19  # "ifReturnNow":Z
    :cond_20f
    move/from16 v6, v19

    .line 5127
    .end local v0  # "ifBelongToFreezed":Z
    .end local v13  # "uidFreezedProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v14  # "NP":I
    .end local v19  # "ifReturnNow":Z
    .restart local v6  # "ifReturnNow":Z
    :goto_211
    goto :goto_21f

    .line 5092
    :cond_212
    move/from16 v19, v6

    .line 5128
    .end local v6  # "ifReturnNow":Z
    .restart local v19  # "ifReturnNow":Z
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_21d

    const-string v0, "Freeze: not process start because not in condition"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_21d
    :goto_21d
    move/from16 v6, v19

    .end local v19  # "ifReturnNow":Z
    .restart local v6  # "ifReturnNow":Z
    :goto_21f
    if-eqz v6, :cond_23a

    .line 5133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: in hook startservice, callingUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but app has been freezed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    :cond_23a
    return v6
.end method

.method private hook_freezeStopServiceProcess(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "record"  # Lcom/android/server/am/ServiceRecord;

    .line 5140
    if-nez p1, :cond_3

    .line 5141
    return-void

    .line 5143
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_28

    .line 5144
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5145
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    .line 5148
    :cond_28
    return-void
.end method

.method private hook_ifAllowServiceRestartAfterKill(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 4
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"  # Z

    .line 5294
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5295
    const/4 v0, 0x0

    return v0

    .line 5297
    :cond_a
    return p2
.end method

.method private hook_retrieveService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZLjava/lang/String;)V
    .registers 30
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "calleeUid"  # I
    .param p7, "service"  # Landroid/content/Intent;
    .param p8, "isInterceptV2"  # Z
    .param p9, "reason"  # Ljava/lang/String;

    .line 5307
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v14

    .line 5308
    .local v14, "focusedApp":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v15

    .line 5309
    .local v15, "isCallerSystemApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v12

    .line 5316
    .local v12, "isCalleeSystemApp":Z
    if-eqz v13, :cond_19

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    move v11, v1

    .line 5317
    .local v11, "isFgAction":Z
    const/16 v16, 0x0

    .line 5319
    .local v16, "isNeedStart":Z
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServiceStats:Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    .line 5321
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 5319
    move v2, v11

    move v3, v15

    move v4, v12

    move/from16 v5, p8

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v19, v11

    .end local v11  # "isFgAction":Z
    .local v19, "isFgAction":Z
    move/from16 v11, v17

    move v0, v12

    .end local v12  # "isCalleeSystemApp":Z
    .local v0, "isCalleeSystemApp":Z
    move-object/from16 v12, v18

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/hips/intercept/InterceptionStats;->updateStats(ZZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)V

    .line 5323
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v1, :cond_ad

    .line 5324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeze: try to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "service caller:, isFgAction:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v19

    .end local v19  # "isFgAction":Z
    .local v3, "isFgAction":Z
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", focusedApp:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", trigger:, isCallerSystemApp:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCalleeSystemApp:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", callerPkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", calleePkg:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", intent:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isInterceptV2: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "ActivityManager"

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 5323
    .end local v3  # "isFgAction":Z
    .restart local v19  # "isFgAction":Z
    :cond_ad
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v2, p9

    move/from16 v3, v19

    .line 5334
    .end local v19  # "isFgAction":Z
    .restart local v3  # "isFgAction":Z
    :goto_b9
    return-void
.end method

.method private isCallerAppVisible(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "callerApp"  # Lcom/android/server/am/ProcessRecord;

    .line 5280
    const-string v0, "ActivityManager"

    if-nez p1, :cond_f

    .line 5281
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_d

    .line 5282
    const-string v1, "Freeze: isCallerAppVisible   callerApp is false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 5286
    :cond_f
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_2b

    .line 5287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeze: isCallerAppVisible   callerApp is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    return v0
.end method

.method private final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 6
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"  # Z
    .param p3, "hasConn"  # Z

    .line 3366
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3367
    return v1

    .line 3371
    :cond_6
    if-nez p2, :cond_c

    .line 3372
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 3374
    :cond_c
    if-eqz p3, :cond_f

    .line 3375
    return v1

    .line 3378
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 21
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3151
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_231

    .line 3154
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_35

    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realStartServiceLocked, ServiceRecord.uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ProcessRecord.uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager_MU"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_35
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 3160
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 3161
    .local v12, "newService":Z
    const-string v0, "create"

    invoke-direct {v1, v9, v11, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3162
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v13, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3163
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3164
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 3166
    const/4 v3, 0x0

    .line 3176
    .local v3, "created":Z
    const/16 v0, 0x64

    :try_start_62
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3177
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 3176
    invoke-static {v0, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;)I

    .line 3178
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4
    :try_end_7c
    .catch Landroid/os/DeadObjectException; {:try_start_62 .. :try_end_7c} :catch_1c8
    .catchall {:try_start_62 .. :try_end_7c} :catchall_1c6

    .line 3179
    :try_start_7c
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 3180
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_1c3

    .line 3181
    :try_start_82
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3183
    const/16 v0, 0xb

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 3184
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3185
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 3186
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 3184
    invoke-interface {v0, v9, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 3187
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_a9
    .catch Landroid/os/DeadObjectException; {:try_start_82 .. :try_end_a9} :catch_1c8
    .catchall {:try_start_82 .. :try_end_a9} :catchall_1c6

    .line 3188
    const/4 v15, 0x1

    .line 3190
    .end local v3  # "created":Z
    .local v15, "created":Z
    :try_start_aa
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v3, v0

    .line 3191
    .local v3, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3192
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3193
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3194
    iget-wide v4, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v4, v4

    iput-wide v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3195
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_c9
    .catch Landroid/os/DeadObjectException; {:try_start_aa .. :try_end_c9} :catch_1c0
    .catchall {:try_start_aa .. :try_end_c9} :catchall_1bd

    .line 3198
    :try_start_c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 3199
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_d4} :catch_d5
    .catch Landroid/os/DeadObjectException; {:try_start_c9 .. :try_end_d4} :catch_1c0
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_1bd

    .line 3204
    :cond_d4
    goto :goto_df

    .line 3201
    :catch_d5
    move-exception v0

    .line 3202
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_d6
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send start details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3203
    iput-object v2, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_df
    .catch Landroid/os/DeadObjectException; {:try_start_d6 .. :try_end_df} :catch_1c0
    .catchall {:try_start_d6 .. :try_end_df} :catchall_1bd

    .line 3210
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v3  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :goto_df
    if-nez v15, :cond_128

    .line 3212
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3213
    .local v0, "inDestroying":Z
    invoke-direct {v1, v9, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3216
    if-eqz v12, :cond_123

    .line 3217
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3218
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3219
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v3, :cond_123

    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_123

    .line 3220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    :cond_123
    if-nez v0, :cond_128

    .line 3228
    invoke-direct {v1, v9, v13}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3233
    .end local v0  # "inDestroying":Z
    :cond_128
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_12e

    .line 3234
    iput-boolean v14, v10, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 3237
    :cond_12e
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3239
    invoke-direct {v1, v10, v2, v14}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3241
    if-eqz v12, :cond_13b

    if-eqz v15, :cond_13b

    .line 3242
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 3248
    :cond_13b
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_164

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_164

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_164

    .line 3249
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    :cond_164
    invoke-direct {v1, v9, v11, v14}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3255
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_194

    .line 3256
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_185

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REM FR DELAY LIST (new proc): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_185
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3258
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    goto :goto_195

    .line 3255
    :cond_194
    const/4 v2, 0x0

    .line 3261
    :goto_195
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_1bc

    .line 3263
    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3264
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_1bc

    .line 3265
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_1b9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying delayed stop (from start): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_1b9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3270
    :cond_1bc
    return-void

    .line 3210
    :catchall_1bd
    move-exception v0

    move v3, v15

    goto :goto_1e6

    .line 3205
    :catch_1c0
    move-exception v0

    move v3, v15

    goto :goto_1c9

    .line 3180
    .end local v15  # "created":Z
    .local v3, "created":Z
    :catchall_1c3
    move-exception v0

    :try_start_1c4
    monitor-exit v4
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    .end local v3  # "created":Z
    .end local v12  # "newService":Z
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p3  # "execInFg":Z
    :try_start_1c5
    throw v0
    :try_end_1c6
    .catch Landroid/os/DeadObjectException; {:try_start_1c5 .. :try_end_1c6} :catch_1c8
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c6

    .line 3210
    .restart local v3  # "created":Z
    .restart local v12  # "newService":Z
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3  # "execInFg":Z
    :catchall_1c6
    move-exception v0

    goto :goto_1e6

    .line 3205
    :catch_1c8
    move-exception v0

    .line 3206
    .local v0, "e":Landroid/os/DeadObjectException;
    :goto_1c9
    :try_start_1c9
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application dead when creating service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3208
    nop

    .end local v3  # "created":Z
    .end local v12  # "newService":Z
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p3  # "execInFg":Z
    throw v0
    :try_end_1e6
    .catchall {:try_start_1c9 .. :try_end_1e6} :catchall_1c6

    .line 3210
    .end local v0  # "e":Landroid/os/DeadObjectException;
    .restart local v3  # "created":Z
    .restart local v12  # "newService":Z
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3  # "execInFg":Z
    :goto_1e6
    if-nez v3, :cond_230

    .line 3212
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3213
    .local v4, "inDestroying":Z
    invoke-direct {v1, v9, v4, v4}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3216
    if-eqz v12, :cond_22a

    .line 3217
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3218
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3219
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v2, :cond_22a

    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_22a

    .line 3220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    :cond_22a
    if-nez v4, :cond_230

    .line 3228
    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3230
    .end local v4  # "inDestroying":Z
    :cond_230
    throw v0

    .line 3152
    .end local v3  # "created":Z
    .end local v12  # "newService":Z
    :cond_231
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .registers 12
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"  # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"  # Z
    .param p4, "rebind"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2648
    const-string v0, "Crashed while binding "

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_b6

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_f

    goto/16 :goto_b6

    .line 2652
    :cond_f
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v3, "ActivityManager"

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestBind "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": requested="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " rebind="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_3c
    iget-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    if-eqz p4, :cond_b5

    :cond_43
    iget-object v1, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_b5

    .line 2656
    :try_start_4b
    const-string v1, "bind"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2657
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2658
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2659
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 2658
    invoke-interface {v1, p1, v5, p4, v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 2660
    if-nez p4, :cond_6e

    .line 2661
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2663
    :cond_6e
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2664
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_72
    .catch Landroid/os/TransactionTooLargeException; {:try_start_4b .. :try_end_72} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_72} :catch_73

    .line 2677
    goto :goto_b5

    .line 2671
    :catch_73
    move-exception v1

    .line 2672
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_8a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2675
    .local v0, "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2676
    return v2

    .line 2665
    .end local v0  # "inDestroying":Z
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_94
    move-exception v1

    .line 2667
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2668
    :cond_ab
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2669
    .restart local v0  # "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2670
    throw v1

    .line 2679
    .end local v0  # "inDestroying":Z
    .end local v1  # "e":Landroid/os/TransactionTooLargeException;
    :cond_b5
    :goto_b5
    return v4

    .line 2650
    :cond_b6
    :goto_b6
    return v2
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3136
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 3137
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 3138
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 3139
    goto :goto_1d

    .line 3136
    .end local v1  # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3142
    .end local v0  # "i":I
    :cond_1d
    :goto_1d
    return-void
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z
    .registers 27
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "service"  # Landroid/content/Intent;
    .param p5, "callerFg"  # Z
    .param p6, "userId"  # I

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c8

    .line 726
    const-string/jumbo v3, "u"

    const-string v5, "ActivityManager"

    const/4 v6, 0x0

    if-nez p5, :cond_43

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Starting a service in package"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requires a permissions review"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return v6

    .line 732
    :cond_43
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v9, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v7, v4, [Landroid/content/Intent;

    aput-object v2, v7, v6

    new-array v4, v4, [Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 735
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    const/high16 v18, 0x54000000

    const/16 v19, 0x0

    .line 732
    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    invoke-virtual/range {v8 .. v19}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v4

    .line 741
    .local v4, "target":Landroid/content/IIntentSender;
    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 742
    const-string v8, "android.intent.action.REVIEW_PERMISSIONS"

    goto :goto_7e

    :cond_7c
    const-string v8, "flyme.intent.action.REVIEW_PERMISSIONS"

    :goto_7e
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v8, 0x18800000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 750
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v8, :cond_b9

    .line 751
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Launching permission review for package "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_b9
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$2;

    move/from16 v8, p6

    invoke-direct {v5, v0, v7, v8}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 762
    return v6

    .line 765
    .end local v4  # "target":Landroid/content/IIntentSender;
    .end local v7  # "intent":Landroid/content/Intent;
    :cond_c8
    move/from16 v8, p6

    return v4
.end method

.method private requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .registers 9
    .param p1, "smap"  # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "timeElapsed"  # J

    .line 1238
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1239
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1a

    .line 1240
    nop

    .line 1241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1240
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_20

    .line 1243
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1244
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    :goto_20
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 68
    .param p1, "service"  # Landroid/content/Intent;
    .param p2, "instanceName"  # Ljava/lang/String;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "callingPid"  # I
    .param p6, "callingUid"  # I
    .param p7, "userId"  # I
    .param p8, "createIfNeeded"  # Z
    .param p9, "callingFromFg"  # Z
    .param p10, "isBindExternal"  # Z
    .param p11, "allowInstant"  # Z
    .param p12, "reason"  # Ljava/lang/String;

    .line 2228
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move/from16 v10, p5

    move/from16 v9, p6

    move-object/from16 v15, p12

    const/4 v0, 0x0

    .line 2229
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveServiceLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p3

    .line 2232
    :goto_3f
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "service"

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2237
    .end local p7  # "userId":I
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v2

    const/16 v29, 0x1

    const/16 v30, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    if-eqz v2, :cond_90

    if-eqz v12, :cond_90

    .line 2238
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.meizu.gamecenter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 2239
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v14, v2, v7

    .line 2241
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v29

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v30

    const/4 v3, 0x3

    aput-object v12, v2, v3

    .line 2239
    const-string/jumbo v3, "mo2-as retrieveServiceLocked crossUser: calling:%s/%s/%s | service:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const/4 v1, 0x0

    move v6, v1

    goto :goto_91

    .line 2247
    :cond_90
    move v6, v1

    .end local v1  # "userId":I
    .local v6, "userId":I
    :goto_91
    invoke-direct {v11, v6}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    .line 2249
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v13, :cond_9d

    .line 2250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v7, v1

    .local v1, "comp":Landroid/content/ComponentName;
    goto :goto_c6

    .line 2252
    .end local v1  # "comp":Landroid/content/ComponentName;
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2253
    .local v1, "realComp":Landroid/content/ComponentName;
    if-eqz v1, :cond_ae2

    .line 2257
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2258
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    move-object v7, v1

    .line 2260
    .end local v1  # "realComp":Landroid/content/ComponentName;
    .local v7, "comp":Landroid/content/ComponentName;
    :goto_c6
    if-eqz v7, :cond_ed

    .line 2261
    iget-object v1, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2262
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_ed

    if-eqz v0, :cond_ed

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieved by component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_ed
    if-nez v0, :cond_11d

    if-nez p10, :cond_11d

    if-nez v13, :cond_11d

    .line 2265
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, v12}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2266
    .local v1, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v2, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2267
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_11d

    if-eqz v0, :cond_11d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved by intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    .end local v1  # "filter":Landroid/content/Intent$FilterComparison;
    :cond_11d
    if-eqz v0, :cond_13a

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_13a

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2270
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 2273
    const/4 v0, 0x0

    .line 2274
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_13a

    const-string v1, "ActivityManager"

    const-string v2, "Whoops, can\'t use existing external service"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_13a
    move-object/from16 v31, v0

    .end local v0  # "r":Lcom/android/server/am/ServiceRecord;
    .local v31, "r":Lcom/android/server/am/ServiceRecord;
    const v4, 0xdc3372

    const/high16 v32, 0x800000

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez v31, :cond_7bf

    .line 2278
    const v0, 0x10000400

    .line 2280
    .local v0, "flags":I
    if-eqz p11, :cond_14f

    .line 2281
    or-int v0, v0, v32

    move/from16 v33, v0

    goto :goto_151

    .line 2280
    :cond_14f
    move/from16 v33, v0

    .line 2284
    .end local v0  # "flags":I
    .local v33, "flags":I
    :goto_151
    :try_start_151
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_157} :catch_7b2

    move-object v10, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, v33

    move-object/from16 v36, v5

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v36, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move v5, v6

    move v10, v6

    .end local v6  # "userId":I
    .local v10, "userId":I
    move/from16 v6, p6

    :try_start_164
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_164 .. :try_end_168} :catch_7ab

    move-object v6, v0

    .line 2286
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_176

    :try_start_16b
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_16d} :catch_16e

    goto :goto_177

    .line 2476
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v33  # "flags":I
    :catch_16e
    move-exception v0

    move-object/from16 v35, v7

    move v4, v10

    move-object/from16 v5, v36

    goto/16 :goto_7b8

    .line 2286
    .restart local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v33  # "flags":I
    :cond_176
    const/4 v2, 0x0

    :goto_177
    move-object v5, v2

    .line 2287
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    if-nez v5, :cond_1aa

    .line 2288
    :try_start_17a
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_19d} :catch_1a0

    .line 2290
    const/16 v37, 0x0

    return-object v37

    .line 2476
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v33  # "flags":I
    :catch_1a0
    move-exception v0

    const/16 v37, 0x0

    move-object/from16 v35, v7

    move v4, v10

    move-object/from16 v5, v36

    goto/16 :goto_7b8

    .line 2292
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v33  # "flags":I
    :cond_1aa
    const/16 v37, 0x0

    if-eqz v13, :cond_1db

    :try_start_1ae
    iget v0, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b5

    goto :goto_1db

    .line 2294
    :cond_1b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use instance name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' with non-isolated service \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v10  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v0
    :try_end_1db
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1db} :catch_16e

    .line 2300
    .restart local v7  # "comp":Landroid/content/ComponentName;
    .restart local v10  # "userId":I
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :cond_1db
    :goto_1db
    :try_start_1db
    const-string v0, ""

    move-object v1, v0

    .line 2301
    .local v1, "callerPkg":Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    .line 2302
    .local v4, "calleePkg":Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1e7

    const/4 v3, -0x1

    goto :goto_1eb

    :cond_1e7
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2303
    .local v3, "calleeUid":I
    :goto_1eb
    invoke-static {}, Landroid/os/Binder;->getRealCallingPid()I

    move-result v0

    move v2, v0

    .line 2304
    .local v2, "realCallingPid":I
    const/16 v16, 0x0

    .line 2306
    .local v16, "isTopRequest":Z
    const/16 v17, 0x0

    .line 2307
    .local v17, "processRecord":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1f9} :catch_7ab

    .line 2308
    :try_start_1f9
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_201
    .catchall {:try_start_1f9 .. :try_end_201} :catchall_796

    move-object/from16 v39, v0

    .line 2309
    .end local v17  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v39, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_203
    monitor-exit v8
    :try_end_204
    .catchall {:try_start_203 .. :try_end_204} :catchall_784

    .line 2311
    move-object/from16 v8, v39

    .end local v39  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v8, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_20d

    .line 2312
    :try_start_208
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v1, v0

    .line 2315
    :cond_20d
    if-eqz v12, :cond_22a

    .line 2316
    const-string v0, "bind"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    iget-object v0, v12, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    if-eqz v0, :cond_22a

    iget-object v0, v12, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 2318
    invoke-virtual {v0}, Landroid/content/IntentExt;->getInterceptSrcPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22a

    .line 2319
    iget-object v0, v12, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getInterceptSrcPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2323
    :cond_22a
    if-eqz v1, :cond_23d

    .line 2324
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 2325
    const/4 v0, 0x1

    move-object/from16 v39, v6

    move v6, v0

    .end local v16  # "isTopRequest":Z
    .local v0, "isTopRequest":Z
    goto :goto_262

    .line 2327
    .end local v0  # "isTopRequest":Z
    .restart local v16  # "isTopRequest":Z
    :cond_23d
    if-eqz v14, :cond_255

    .line 2328
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_249
    .catch Landroid/os/RemoteException; {:try_start_208 .. :try_end_249} :catch_16e

    if-eqz v0, :cond_250

    .line 2329
    const/4 v0, 0x1

    move-object/from16 v39, v6

    move v6, v0

    .end local v16  # "isTopRequest":Z
    .restart local v0  # "isTopRequest":Z
    goto :goto_262

    .line 2335
    .end local v0  # "isTopRequest":Z
    .restart local v16  # "isTopRequest":Z
    :cond_250
    move-object/from16 v39, v6

    move/from16 v6, v16

    goto :goto_262

    .line 2332
    :cond_255
    :try_start_255
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v6

    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v39, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v0, v6, v14}, Lcom/android/server/am/ActivityManagerService;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v0
    :try_end_261
    .catch Landroid/os/RemoteException; {:try_start_255 .. :try_end_261} :catch_7ab

    move v6, v0

    .line 2335
    .end local v16  # "isTopRequest":Z
    .local v6, "isTopRequest":Z
    :goto_262
    if-eqz v1, :cond_26c

    :try_start_264
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_26a
    .catch Landroid/os/RemoteException; {:try_start_264 .. :try_end_26a} :catch_16e

    if-eqz v0, :cond_26f

    .line 2336
    :cond_26c
    move-object/from16 v0, p4

    .end local v1  # "callerPkg":Ljava/lang/String;
    .local v0, "callerPkg":Ljava/lang/String;
    move-object v1, v0

    .line 2339
    .end local v0  # "callerPkg":Ljava/lang/String;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    :cond_26f
    :try_start_26f
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_26f .. :try_end_276} :catch_7ab

    if-eqz v0, :cond_2fc

    .line 2340
    :try_start_278
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v0, :cond_2d5

    .line 2341
    const-string v0, "ActivityManager"
    :try_end_27e
    .catch Landroid/os/RemoteException; {:try_start_278 .. :try_end_27e} :catch_2f4

    move-object/from16 v40, v7

    .end local v7  # "comp":Landroid/content/ComponentName;
    .local v40, "comp":Landroid/content/ComponentName;
    :try_start_280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v8

    .end local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v41, "processRecord":Lcom/android/server/am/ProcessRecord;
    const-string v8, "Stop service, caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " skipped <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "> service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2341
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b2
    .catch Landroid/os/RemoteException; {:try_start_280 .. :try_end_2b2} :catch_2cd

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v17, v6

    move/from16 v43, v10

    move-object v13, v15

    move-object/from16 v11, v37

    move-object/from16 v22, v39

    move-object/from16 v35, v40

    move-object/from16 v23, v41

    const/16 v25, 0x4

    goto/16 :goto_40c

    .line 2476
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "realCallingPid":I
    .end local v3  # "calleeUid":I
    .end local v4  # "calleePkg":Ljava/lang/String;
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "isTopRequest":Z
    .end local v33  # "flags":I
    .end local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catch_2cd
    move-exception v0

    :goto_2ce
    move v4, v10

    move-object/from16 v5, v36

    move-object/from16 v35, v40

    goto/16 :goto_7b8

    .line 2340
    .end local v40  # "comp":Landroid/content/ComponentName;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    .restart local v2  # "realCallingPid":I
    .restart local v3  # "calleeUid":I
    .restart local v4  # "calleePkg":Ljava/lang/String;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "isTopRequest":Z
    .restart local v7  # "comp":Landroid/content/ComponentName;
    .restart local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2d5
    move-object/from16 v40, v7

    move-object/from16 v41, v8

    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v40  # "comp":Landroid/content/ComponentName;
    .restart local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v17, v6

    move/from16 v43, v10

    move-object v13, v15

    move-object/from16 v11, v37

    move-object/from16 v22, v39

    move-object/from16 v35, v40

    move-object/from16 v23, v41

    const/16 v25, 0x4

    goto/16 :goto_40c

    .line 2476
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "realCallingPid":I
    .end local v3  # "calleeUid":I
    .end local v4  # "calleePkg":Ljava/lang/String;
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "isTopRequest":Z
    .end local v33  # "flags":I
    .end local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40  # "comp":Landroid/content/ComponentName;
    .end local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v7  # "comp":Landroid/content/ComponentName;
    :catch_2f4
    move-exception v0

    move-object/from16 v35, v7

    move v4, v10

    move-object/from16 v5, v36

    .end local v7  # "comp":Landroid/content/ComponentName;
    .restart local v40  # "comp":Landroid/content/ComponentName;
    goto/16 :goto_7b8

    .line 2345
    .end local v40  # "comp":Landroid/content/ComponentName;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    .restart local v2  # "realCallingPid":I
    .restart local v3  # "calleeUid":I
    .restart local v4  # "calleePkg":Ljava/lang/String;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "isTopRequest":Z
    .restart local v7  # "comp":Landroid/content/ComponentName;
    .restart local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2fc
    move-object/from16 v40, v7

    move-object/from16 v41, v8

    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v40  # "comp":Landroid/content/ComponentName;
    .restart local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    .line 2346
    .local v0, "retrieveService":Landroid/content/Intent;
    :try_start_302
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_308
    .catch Landroid/os/RemoteException; {:try_start_302 .. :try_end_308} :catch_77d

    :try_start_308
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2349
    const/4 v7, 0x0

    .line 2350
    .local v7, "isRunning":Z
    iget-object v8, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move/from16 v16, v7

    const/4 v7, 0x0

    .end local v7  # "isRunning":Z
    .local v16, "isRunning":Z
    invoke-virtual {v8, v9, v3, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v8
    :try_end_31c
    .catch Landroid/os/RemoteException; {:try_start_308 .. :try_end_31c} :catch_779

    move-object v9, v8

    .line 2351
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_32b

    :try_start_31f
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_321
    .catch Landroid/os/RemoteException; {:try_start_31f .. :try_end_321} :catch_327

    if-eqz v8, :cond_32b

    .line 2352
    const/4 v8, 0x1

    move/from16 v42, v8

    .end local v16  # "isRunning":Z
    .local v8, "isRunning":Z
    goto :goto_32d

    .line 2476
    .end local v0  # "retrieveService":Landroid/content/Intent;
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "realCallingPid":I
    .end local v3  # "calleeUid":I
    .end local v4  # "calleePkg":Ljava/lang/String;
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "isTopRequest":Z
    .end local v8  # "isRunning":Z
    .end local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catch_327
    move-exception v0

    move/from16 v9, p6

    goto :goto_2ce

    .line 2355
    .restart local v0  # "retrieveService":Landroid/content/Intent;
    .restart local v1  # "callerPkg":Ljava/lang/String;
    .restart local v2  # "realCallingPid":I
    .restart local v3  # "calleeUid":I
    .restart local v4  # "calleePkg":Ljava/lang/String;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "isTopRequest":Z
    .restart local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "isRunning":Z
    .restart local v33  # "flags":I
    .restart local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_32b
    move/from16 v42, v16

    .end local v16  # "isRunning":Z
    .local v42, "isRunning":Z
    :goto_32d
    :try_start_32d
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const-string/jumbo v21, "retrieve_service"

    .line 2366
    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;

    move-result-object v23

    .line 2368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25
    :try_end_33a
    .catch Landroid/os/RemoteException; {:try_start_32d .. :try_end_33a} :catch_779

    const/16 v27, 0x0

    .line 2356
    move-object v13, v15

    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v0

    move/from16 v22, v2

    move/from16 v24, p5

    move/from16 v28, v42

    :try_start_34e
    invoke-static/range {v15 .. v28}, Lcom/android/server/hips/intercept/Interception;->isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z

    move-result v8

    move v15, v8

    .line 2371
    .local v15, "isIntercept":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERCEPT "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " call "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from service "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pid "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fg "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isIntercept "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 2372
    .local v8, "events":Ljava/lang/String;
    const v7, 0xdc3372

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_39d
    .catch Landroid/os/RemoteException; {:try_start_34e .. :try_end_39d} :catch_76f

    .line 2373
    move-object/from16 v16, v1

    .end local v1  # "callerPkg":Ljava/lang/String;
    .local v16, "callerPkg":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2  # "realCallingPid":I
    .local v18, "realCallingPid":I
    move-object/from16 v2, v16

    move/from16 v19, v3

    .end local v3  # "calleeUid":I
    .local v19, "calleeUid":I
    move-object/from16 v3, p4

    move-object/from16 v20, v4

    .end local v4  # "calleePkg":Ljava/lang/String;
    .local v20, "calleePkg":Ljava/lang/String;
    move-object/from16 v21, v5

    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v21, "sInfo":Landroid/content/pm/ServiceInfo;
    move/from16 v5, p5

    move/from16 v17, v6

    move-object/from16 v22, v39

    .end local v6  # "isTopRequest":Z
    .end local v39  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v17, "isTopRequest":Z
    .local v22, "rInfo":Landroid/content/pm/ResolveInfo;
    move/from16 v6, p6

    move-object/from16 v35, v40

    .end local v40  # "comp":Landroid/content/ComponentName;
    .local v35, "comp":Landroid/content/ComponentName;
    move/from16 v7, v19

    move-object/from16 v24, v8

    move-object/from16 v23, v41

    const/16 v25, 0x4

    .end local v8  # "events":Ljava/lang/String;
    .end local v41  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v23, "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v24, "events":Ljava/lang/String;
    move-object/from16 v8, p1

    move-object/from16 v26, v9

    .end local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .local v26, "proc":Lcom/android/server/am/ProcessRecord;
    move v9, v15

    move/from16 v43, v10

    move-object/from16 v11, v37

    .end local v10  # "userId":I
    .local v43, "userId":I
    move-object/from16 v10, p12

    :try_start_3ca
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->hook_retrieveService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZLjava/lang/String;)V
    :try_end_3cd
    .catch Landroid/os/RemoteException; {:try_start_3ca .. :try_end_3cd} :catch_761

    .line 2375
    if-eqz v15, :cond_40c

    .line 2376
    :try_start_3cf
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v1, :cond_405

    .line 2377
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " skipped <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2377
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_405
    .catch Landroid/os/RemoteException; {:try_start_3cf .. :try_end_405} :catch_406

    .line 2380
    :cond_405
    return-object v11

    .line 2476
    .end local v0  # "retrieveService":Landroid/content/Intent;
    .end local v15  # "isIntercept":Z
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v21  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "events":Ljava/lang/String;
    .end local v26  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v42  # "isRunning":Z
    :catch_406
    move-exception v0

    move-object/from16 v11, p0

    move/from16 v9, p6

    goto :goto_46f

    .line 2385
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v21  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    :cond_40c
    :goto_40c
    :try_start_40c
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v2, v21

    .end local v21  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v2, "sInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_419
    .catch Landroid/os/RemoteException; {:try_start_40c .. :try_end_419} :catch_761

    move-object v7, v0

    .line 2387
    .local v7, "className":Landroid/content/ComponentName;
    if-eqz v35, :cond_41f

    move-object/from16 v0, v35

    goto :goto_420

    :cond_41f
    move-object v0, v7

    .line 2388
    .local v0, "name":Landroid/content/ComponentName;
    :goto_420
    move-object v10, v11

    move-object/from16 v11, p0

    :try_start_423
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2389
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_42d
    .catch Landroid/os/RemoteException; {:try_start_423 .. :try_end_42d} :catch_75f

    .line 2388
    move/from16 v9, p6

    :try_start_42f
    invoke-virtual {v1, v14, v9, v3, v4}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1
    :try_end_433
    .catch Landroid/os/RemoteException; {:try_start_42f .. :try_end_433} :catch_75d

    if-nez v1, :cond_478

    .line 2390
    :try_start_435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "association not allowed between packages "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2392
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service lookup failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    new-instance v3, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v3, v11, v10, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    :try_end_46d
    .catch Landroid/os/RemoteException; {:try_start_435 .. :try_end_46d} :catch_46e

    return-object v3

    .line 2476
    .end local v0  # "name":Landroid/content/ComponentName;
    .end local v1  # "msg":Ljava/lang/String;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    :catch_46e
    move-exception v0

    :goto_46f
    move-object v15, v13

    move-object/from16 v5, v36

    move/from16 v4, v43

    move-object/from16 v13, p2

    goto/16 :goto_7b8

    .line 2399
    .restart local v0  # "name":Landroid/content/ComponentName;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    :cond_478
    :try_start_478
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v49, v1

    .line 2400
    .local v49, "definingPackageName":Ljava/lang/String;
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v50, v1

    .line 2401
    .local v50, "definingUid":I
    iget v1, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_57b

    .line 2402
    if-eqz p10, :cond_55f

    .line 2403
    iget-boolean v1, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_53e

    .line 2407
    iget v1, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_51d

    .line 2412
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_49a
    .catch Landroid/os/RemoteException; {:try_start_478 .. :try_end_49a} :catch_75d

    const/16 v3, 0x400

    move/from16 v4, v43

    .end local v43  # "userId":I
    .local v4, "userId":I
    :try_start_49e
    invoke-interface {v1, v14, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2414
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_4fb

    .line 2418
    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v5, v3

    .line 2419
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v2, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2420
    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2421
    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2422
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 2423
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4cf
    .catch Landroid/os/RemoteException; {:try_start_49e .. :try_end_4cf} :catch_515

    .line 2424
    move-object v15, v13

    move-object/from16 v13, p2

    if-nez v13, :cond_4d9

    :try_start_4d4
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4f1

    .line 2425
    :cond_4d9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4f1
    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 2426
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2427
    move-object v1, v0

    .end local v1  # "aInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_584

    .line 2415
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1  # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_4fb
    move-object v15, v13

    move-object/from16 v13, p2

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v3

    .line 2476
    .end local v0  # "name":Landroid/content/ComponentName;
    .end local v1  # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    .restart local v4  # "userId":I
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :catch_515
    move-exception v0

    move-object v15, v13

    move-object/from16 v13, p2

    move-object/from16 v5, v36

    goto/16 :goto_7b8

    .line 2408
    .end local v4  # "userId":I
    .restart local v0  # "name":Landroid/content/ComponentName;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v43  # "userId":I
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :cond_51d
    move-object v15, v13

    move/from16 v4, v43

    move-object/from16 v13, p2

    .end local v43  # "userId":I
    .restart local v4  # "userId":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not an isolatedProcess"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v1

    .line 2404
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v43  # "userId":I
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :cond_53e
    move-object v15, v13

    move/from16 v4, v43

    move-object/from16 v13, p2

    .end local v43  # "userId":I
    .restart local v4  # "userId":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not exported"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v1

    .line 2428
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v43  # "userId":I
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :cond_55f
    move-object v15, v13

    move/from16 v4, v43

    move-object/from16 v13, p2

    .end local v43  # "userId":I
    .restart local v4  # "userId":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v1

    .line 2431
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v43  # "userId":I
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :cond_57b
    move-object v15, v13

    move/from16 v4, v43

    move-object/from16 v13, p2

    .end local v43  # "userId":I
    .restart local v4  # "userId":I
    if-nez p10, :cond_741

    move-object v1, v0

    move-object v5, v2

    .line 2435
    .end local v0  # "name":Landroid/content/ComponentName;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v1, "name":Landroid/content/ComponentName;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_584
    if-lez v4, :cond_5c8

    .line 2436
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v8, v5, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5ad

    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2438
    invoke-virtual {v0, v9, v2}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0
    :try_end_5a0
    .catch Landroid/os/RemoteException; {:try_start_4d4 .. :try_end_5a0} :catch_7a5

    if-eqz v0, :cond_5ab

    .line 2439
    const/4 v6, 0x0

    .line 2440
    .end local v4  # "userId":I
    .local v6, "userId":I
    const/4 v3, 0x0

    :try_start_5a4
    invoke-direct {v11, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    move-object/from16 v36, v0

    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto :goto_5af

    .line 2438
    .end local v0  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .restart local v4  # "userId":I
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_5ab
    const/4 v3, 0x0

    goto :goto_5ae

    .line 2436
    :cond_5ad
    const/4 v3, 0x0

    .line 2442
    :goto_5ae
    move v6, v4

    .end local v4  # "userId":I
    .restart local v6  # "userId":I
    :goto_5af
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v5}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 2443
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v6}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5be
    .catch Landroid/os/RemoteException; {:try_start_5a4 .. :try_end_5be} :catch_5c2

    move-object v2, v0

    move-object/from16 v5, v36

    goto :goto_5cd

    .line 2476
    .end local v0  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    :catch_5c2
    move-exception v0

    move v4, v6

    move-object/from16 v5, v36

    goto/16 :goto_7b8

    .line 2435
    .end local v6  # "userId":I
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v4  # "userId":I
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :cond_5c8
    const/4 v3, 0x0

    move v6, v4

    move-object v2, v5

    move-object/from16 v5, v36

    .line 2445
    .end local v4  # "userId":I
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6  # "userId":I
    :goto_5cd
    :try_start_5cd
    iget-object v0, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_5d5
    .catch Landroid/os/RemoteException; {:try_start_5cd .. :try_end_5d5} :catch_738

    move-object v4, v0

    .line 2446
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_5d6
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_5d8
    .catch Landroid/os/RemoteException; {:try_start_5d6 .. :try_end_5d8} :catch_72b

    if-eqz v0, :cond_5f9

    if-eqz v4, :cond_5f9

    :try_start_5dc
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved via pm by intent: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f2
    .catch Landroid/os/RemoteException; {:try_start_5dc .. :try_end_5f2} :catch_5f3

    goto :goto_5f9

    .line 2476
    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    :catch_5f3
    move-exception v0

    move-object/from16 v31, v4

    move v4, v6

    goto/16 :goto_7b8

    .line 2448
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :cond_5f9
    :goto_5f9
    if-nez v4, :cond_719

    if-eqz p8, :cond_719

    .line 2449
    :try_start_5fd
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v3, v0

    .line 2451
    .local v3, "filter":Landroid/content/Intent$FilterComparison;
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-direct {v0, v11, v10}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    move-object v8, v0

    .line 2453
    .local v8, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object/from16 p7, v0

    .line 2454
    .local p7, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v10, p7

    .end local p7  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v10, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v10
    :try_end_61a
    .catch Landroid/os/RemoteException; {:try_start_5fd .. :try_end_61a} :catch_72b

    .line 2455
    :try_start_61a
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_61e
    .catchall {:try_start_61a .. :try_end_61e} :catchall_701

    .line 2456
    move-object/from16 p7, v4

    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .local p7, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_620
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_624
    .catchall {:try_start_620 .. :try_end_624} :catchall_6f7

    .line 2457
    move/from16 v21, v6

    .end local v6  # "userId":I
    .local v21, "userId":I
    :try_start_626
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 2455
    invoke-virtual {v10, v0, v4, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v46

    .line 2458
    .local v46, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v10
    :try_end_62f
    .catchall {:try_start_626 .. :try_end_62f} :catchall_6ef

    .line 2459
    :try_start_62f
    new-instance v0, Lcom/android/server/am/ServiceRecord;

    iget-object v4, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v44, v0

    move-object/from16 v45, v4

    move-object/from16 v47, v7

    move-object/from16 v48, v1

    move-object/from16 v51, v3

    move-object/from16 v52, v2

    move/from16 v53, p9

    move-object/from16 v54, v8

    invoke-direct/range {v44 .. v54}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_646
    .catch Landroid/os/RemoteException; {:try_start_62f .. :try_end_646} :catch_6e6

    move-object v4, v0

    .line 2461
    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v4  # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_647
    invoke-virtual {v8, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2462
    iget-object v0, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    iget-object v0, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_65c
    if-ltz v0, :cond_6b1

    .line 2467
    iget-object v6, v11, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2468
    .local v6, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v24, v3

    .end local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .local v24, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_66e
    .catch Landroid/os/RemoteException; {:try_start_647 .. :try_end_66e} :catch_6dd

    move-object/from16 v25, v5

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v25, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :try_start_670
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_6a6

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 2469
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a3

    .line 2470
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_69b

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v1

    .end local v1  # "name":Landroid/content/ComponentName;
    .local v26, "name":Landroid/content/ComponentName;
    const-string v1, "Remove pending: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69d

    .end local v26  # "name":Landroid/content/ComponentName;
    .restart local v1  # "name":Landroid/content/ComponentName;
    :cond_69b
    move-object/from16 v26, v1

    .line 2471
    .end local v1  # "name":Landroid/content/ComponentName;
    .restart local v26  # "name":Landroid/content/ComponentName;
    :goto_69d
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6a8

    .line 2469
    .end local v26  # "name":Landroid/content/ComponentName;
    .restart local v1  # "name":Landroid/content/ComponentName;
    :cond_6a3
    move-object/from16 v26, v1

    .end local v1  # "name":Landroid/content/ComponentName;
    .restart local v26  # "name":Landroid/content/ComponentName;
    goto :goto_6a8

    .line 2468
    .end local v26  # "name":Landroid/content/ComponentName;
    .restart local v1  # "name":Landroid/content/ComponentName;
    :cond_6a6
    move-object/from16 v26, v1

    .line 2466
    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v6  # "pr":Lcom/android/server/am/ServiceRecord;
    .restart local v26  # "name":Landroid/content/ComponentName;
    :goto_6a8
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v1, v26

    goto :goto_65c

    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v26  # "name":Landroid/content/ComponentName;
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_6b1
    move-object/from16 v26, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    .line 2474
    .end local v0  # "i":I
    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v26  # "name":Landroid/content/ComponentName;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_6d1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieve created new service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d1
    .catch Landroid/os/RemoteException; {:try_start_670 .. :try_end_6d1} :catch_6d4

    .line 2478
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v10  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v26  # "name":Landroid/content/ComponentName;
    .end local v33  # "flags":I
    .end local v46  # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    :cond_6d1
    move-object/from16 v31, v4

    goto :goto_723

    .line 2476
    :catch_6d4
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v4, v21

    move-object/from16 v5, v25

    goto/16 :goto_7b8

    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_6dd
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v31, v4

    move/from16 v4, v21

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_7b8

    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p7  # "r":Lcom/android/server/am/ServiceRecord;
    :catch_6e6
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v31, p7

    move/from16 v4, v21

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_7b8

    .line 2458
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v10  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :catchall_6ef
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v26  # "name":Landroid/content/ComponentName;
    goto :goto_70c

    .end local v21  # "userId":I
    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v26  # "name":Landroid/content/ComponentName;
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v6, "userId":I
    :catchall_6f7
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move/from16 v21, v6

    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .restart local v21  # "userId":I
    .restart local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v26  # "name":Landroid/content/ComponentName;
    goto :goto_70c

    .end local v21  # "userId":I
    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v26  # "name":Landroid/content/ComponentName;
    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6  # "userId":I
    :catchall_701
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v24, v3

    move-object/from16 p7, v4

    move-object/from16 v25, v5

    move/from16 v21, v6

    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v3  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .restart local v21  # "userId":I
    .restart local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v26  # "name":Landroid/content/ComponentName;
    .restart local p7  # "r":Lcom/android/server/am/ServiceRecord;
    :goto_70c
    :try_start_70c
    monitor-exit v10
    :try_end_70d
    .catchall {:try_start_70c .. :try_end_70d} :catchall_717

    .end local v21  # "userId":I
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    :try_start_70d
    throw v0
    :try_end_70e
    .catch Landroid/os/RemoteException; {:try_start_70d .. :try_end_70e} :catch_70e

    .line 2476
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v10  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v26  # "name":Landroid/content/ComponentName;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    .restart local v21  # "userId":I
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :catch_70e
    move-exception v0

    move-object/from16 v31, p7

    move/from16 v4, v21

    move-object/from16 v5, v25

    goto/16 :goto_7b8

    .line 2458
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v10  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v26  # "name":Landroid/content/ComponentName;
    .restart local v33  # "flags":I
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :catchall_717
    move-exception v0

    goto :goto_70c

    .line 2448
    .end local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v10  # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21  # "userId":I
    .end local v24  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v26  # "name":Landroid/content/ComponentName;
    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v1  # "name":Landroid/content/ComponentName;
    .restart local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6  # "userId":I
    :cond_719
    move-object/from16 v26, v1

    move-object/from16 p7, v4

    move-object/from16 v25, v5

    move/from16 v21, v6

    .line 2478
    .end local v1  # "name":Landroid/content/ComponentName;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    .restart local v21  # "userId":I
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p7  # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v31, p7

    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    :goto_723
    move/from16 v29, v21

    move-object/from16 v36, v25

    move-object/from16 v10, v31

    goto/16 :goto_7c8

    .line 2476
    .end local v21  # "userId":I
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6  # "userId":I
    :catch_72b
    move-exception v0

    move-object/from16 p7, v4

    move-object/from16 v25, v5

    move/from16 v21, v6

    move-object/from16 v31, p7

    move/from16 v4, v21

    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .restart local v21  # "userId":I
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p7  # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_7b8

    .end local v21  # "userId":I
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6  # "userId":I
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    :catch_738
    move-exception v0

    move-object/from16 v25, v5

    move/from16 v21, v6

    move/from16 v4, v21

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .restart local v21  # "userId":I
    .restart local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_7b8

    .line 2432
    .end local v21  # "userId":I
    .end local v25  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v0, "name":Landroid/content/ComponentName;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v4, "userId":I
    .restart local v7  # "className":Landroid/content/ComponentName;
    .restart local v16  # "callerPkg":Ljava/lang/String;
    .restart local v17  # "isTopRequest":Z
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "flags":I
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v49  # "definingPackageName":Ljava/lang/String;
    .restart local v50  # "definingUid":I
    :cond_741
    :try_start_741
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not an externalService"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    throw v1
    :try_end_75d
    .catch Landroid/os/RemoteException; {:try_start_741 .. :try_end_75d} :catch_7a5

    .line 2476
    .end local v0  # "name":Landroid/content/ComponentName;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7  # "className":Landroid/content/ComponentName;
    .end local v16  # "callerPkg":Ljava/lang/String;
    .end local v17  # "isTopRequest":Z
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "flags":I
    .end local v49  # "definingPackageName":Ljava/lang/String;
    .end local v50  # "definingUid":I
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v43  # "userId":I
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :catch_75d
    move-exception v0

    goto :goto_766

    :catch_75f
    move-exception v0

    goto :goto_764

    :catch_761
    move-exception v0

    move-object/from16 v11, p0

    :goto_764
    move/from16 v9, p6

    :goto_766
    move-object v15, v13

    move/from16 v4, v43

    move-object/from16 v13, p2

    move-object/from16 v5, v36

    .end local v43  # "userId":I
    .restart local v4  # "userId":I
    goto/16 :goto_7b8

    .end local v4  # "userId":I
    .end local v35  # "comp":Landroid/content/ComponentName;
    .local v10, "userId":I
    .restart local v40  # "comp":Landroid/content/ComponentName;
    :catch_76f
    move-exception v0

    move/from16 v9, p6

    move v4, v10

    move-object v15, v13

    move-object/from16 v35, v40

    move-object/from16 v13, p2

    goto :goto_781

    :catch_779
    move-exception v0

    move/from16 v9, p6

    goto :goto_77e

    :catch_77d
    move-exception v0

    :goto_77e
    move v4, v10

    move-object/from16 v35, v40

    :goto_781
    move-object/from16 v5, v36

    .end local v10  # "userId":I
    .end local v40  # "comp":Landroid/content/ComponentName;
    .restart local v4  # "userId":I
    .restart local v35  # "comp":Landroid/content/ComponentName;
    goto :goto_7b8

    .line 2309
    .end local v35  # "comp":Landroid/content/ComponentName;
    .local v1, "callerPkg":Ljava/lang/String;
    .local v2, "realCallingPid":I
    .local v3, "calleeUid":I
    .local v4, "calleePkg":Ljava/lang/String;
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "comp":Landroid/content/ComponentName;
    .restart local v10  # "userId":I
    .local v16, "isTopRequest":Z
    .restart local v33  # "flags":I
    .local v39, "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_784
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v2, v5

    move-object/from16 v22, v6

    move-object/from16 v35, v7

    move v4, v10

    move-object/from16 v23, v39

    move-object/from16 v17, v23

    .end local v3  # "calleeUid":I
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v10  # "userId":I
    .end local v39  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v2, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v4, "userId":I
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    goto :goto_7a3

    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .local v2, "realCallingPid":I
    .restart local v3  # "calleeUid":I
    .local v4, "calleePkg":Ljava/lang/String;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7  # "comp":Landroid/content/ComponentName;
    .restart local v10  # "userId":I
    .local v17, "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_796
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v2, v5

    move-object/from16 v22, v6

    move-object/from16 v35, v7

    move v4, v10

    .end local v3  # "calleeUid":I
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v10  # "userId":I
    .local v2, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v4, "userId":I
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    :goto_7a3
    :try_start_7a3
    monitor-exit v8
    :try_end_7a4
    .catchall {:try_start_7a3 .. :try_end_7a4} :catchall_7a9

    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "service":Landroid/content/Intent;
    .end local p2  # "instanceName":Ljava/lang/String;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .end local p6  # "callingUid":I
    .end local p8  # "createIfNeeded":Z
    .end local p9  # "callingFromFg":Z
    .end local p10  # "isBindExternal":Z
    .end local p11  # "allowInstant":Z
    .end local p12  # "reason":Ljava/lang/String;
    :try_start_7a4
    throw v0
    :try_end_7a5
    .catch Landroid/os/RemoteException; {:try_start_7a4 .. :try_end_7a5} :catch_7a5

    .line 2476
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v16  # "isTopRequest":Z
    .end local v17  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v33  # "flags":I
    .restart local v4  # "userId":I
    .restart local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "service":Landroid/content/Intent;
    .restart local p2  # "instanceName":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    .restart local p6  # "callingUid":I
    .restart local p8  # "createIfNeeded":Z
    .restart local p9  # "callingFromFg":Z
    .restart local p10  # "isBindExternal":Z
    .restart local p11  # "allowInstant":Z
    .restart local p12  # "reason":Ljava/lang/String;
    :catch_7a5
    move-exception v0

    move-object/from16 v5, v36

    goto :goto_7b8

    .line 2309
    .restart local v1  # "callerPkg":Ljava/lang/String;
    .restart local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v16  # "isTopRequest":Z
    .restart local v17  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v18  # "realCallingPid":I
    .restart local v19  # "calleeUid":I
    .restart local v20  # "calleePkg":Ljava/lang/String;
    .restart local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v33  # "flags":I
    :catchall_7a9
    move-exception v0

    goto :goto_7a3

    .line 2476
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v2  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v4  # "userId":I
    .end local v16  # "isTopRequest":Z
    .end local v17  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v18  # "realCallingPid":I
    .end local v19  # "calleeUid":I
    .end local v20  # "calleePkg":Ljava/lang/String;
    .end local v22  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v33  # "flags":I
    .end local v35  # "comp":Landroid/content/ComponentName;
    .restart local v7  # "comp":Landroid/content/ComponentName;
    .restart local v10  # "userId":I
    :catch_7ab
    move-exception v0

    move-object/from16 v35, v7

    move v4, v10

    move-object/from16 v5, v36

    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v10  # "userId":I
    .restart local v4  # "userId":I
    .restart local v35  # "comp":Landroid/content/ComponentName;
    goto :goto_7b8

    .end local v4  # "userId":I
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v6, "userId":I
    .restart local v7  # "comp":Landroid/content/ComponentName;
    :catch_7b2
    move-exception v0

    move-object/from16 v36, v5

    move v4, v6

    move-object/from16 v35, v7

    .end local v6  # "userId":I
    .end local v7  # "comp":Landroid/content/ComponentName;
    .restart local v4  # "userId":I
    .restart local v35  # "comp":Landroid/content/ComponentName;
    :goto_7b8
    move/from16 v29, v4

    move-object/from16 v36, v5

    move-object/from16 v10, v31

    goto :goto_7c8

    .line 2276
    .end local v4  # "userId":I
    .end local v35  # "comp":Landroid/content/ComponentName;
    .restart local v6  # "userId":I
    .restart local v7  # "comp":Landroid/content/ComponentName;
    :cond_7bf
    move-object/from16 v36, v5

    move v4, v6

    move-object/from16 v35, v7

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .end local v7  # "comp":Landroid/content/ComponentName;
    .restart local v4  # "userId":I
    .restart local v35  # "comp":Landroid/content/ComponentName;
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move/from16 v29, v4

    move-object/from16 v10, v31

    .line 2480
    .end local v4  # "userId":I
    .end local v31  # "r":Lcom/android/server/am/ServiceRecord;
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    .local v29, "userId":I
    :goto_7c8
    if-eqz v10, :cond_adf

    .line 2481
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v14, v9, v1, v2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_810

    .line 2483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "association not allowed between packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2485
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service lookup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v2, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v1

    .line 2488
    .end local v0  # "msg":Ljava/lang/String;
    :cond_810
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_830

    .line 2490
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v1, "blocked by firewall"

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2492
    :cond_830
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v2, v10, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v7, p5

    invoke-static {v0, v7, v9, v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_8d2

    .line 2494
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_897

    .line 2495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Accessing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that is not exported from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not exported from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2502
    :cond_897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Accessing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2507
    :cond_8d2
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_925

    if-eqz v14, :cond_925

    .line 2508
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 2509
    .local v0, "opCode":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_922

    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v0, v9, v14}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_922

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires appop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2511
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/16 v30, 0x0

    return-object v30

    .line 2509
    :cond_922
    const/16 v30, 0x0

    goto :goto_928

    .line 2507
    .end local v0  # "opCode":I
    :cond_925
    const/4 v6, -0x1

    const/16 v30, 0x0

    .line 2521
    :goto_928
    const v0, 0x10000400

    .line 2523
    .local v0, "flags":I
    if-eqz p11, :cond_932

    .line 2524
    or-int v0, v0, v32

    move/from16 v31, v0

    goto :goto_934

    .line 2523
    :cond_932
    move/from16 v31, v0

    .line 2526
    .end local v0  # "flags":I
    .local v31, "flags":I
    :goto_934
    move-object/from16 v32, p1

    .line 2527
    .local v32, "retrieveService":Landroid/content/Intent;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, v31

    move/from16 v5, v29

    move/from16 v16, v6

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2528
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_951

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_953

    :cond_951
    move-object/from16 v2, v30

    :goto_953
    move-object v5, v2

    .line 2529
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    const-string v1, ""

    .line 2530
    .restart local v1  # "callerPkg":Ljava/lang/String;
    const-string v0, ""

    .line 2531
    .local v0, "calleePkg":Ljava/lang/String;
    const-string v2, ""

    .line 2532
    .local v2, "sProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2533
    .restart local v3  # "calleeUid":I
    if-eqz v5, :cond_974

    .line 2534
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2535
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_969

    move/from16 v4, v16

    goto :goto_96d

    :cond_969
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_96d
    move v3, v4

    .line 2536
    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v33, v2

    goto :goto_977

    .line 2533
    :cond_974
    move-object v4, v0

    move-object/from16 v33, v2

    .line 2538
    .end local v0  # "calleePkg":Ljava/lang/String;
    .end local v2  # "sProcessName":Ljava/lang/String;
    .local v4, "calleePkg":Ljava/lang/String;
    .local v33, "sProcessName":Ljava/lang/String;
    :goto_977
    invoke-static {}, Landroid/os/Binder;->getRealCallingPid()I

    move-result v2

    .line 2540
    .local v2, "realCallingPid":I
    const/16 v16, 0x0

    .line 2541
    .local v16, "processRecord":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8

    .line 2542
    :try_start_982
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_98a
    .catchall {:try_start_982 .. :try_end_98a} :catchall_acd

    move-object/from16 p7, v0

    .line 2543
    .end local v16  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local p7, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_98c
    monitor-exit v8
    :try_end_98d
    .catchall {:try_start_98c .. :try_end_98d} :catchall_aba

    .line 2545
    move-object/from16 v8, p7

    .end local p7  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v8, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_995

    .line 2546
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2548
    :cond_995
    if-eqz v1, :cond_9a2

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a0

    goto :goto_9a2

    .line 2552
    :cond_9a0
    move-object v0, v1

    goto :goto_9a4

    .line 2549
    :cond_9a2
    :goto_9a2
    move-object/from16 v0, p4

    .line 2552
    .end local v1  # "callerPkg":Ljava/lang/String;
    .local v0, "callerPkg":Ljava/lang/String;
    :goto_9a4
    const-string v1, ""

    .line 2553
    .local v1, "calleeClass":Ljava/lang/String;
    if-eqz v32, :cond_9b6

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_9b6

    .line 2554
    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2557
    :cond_9b6
    const/16 v16, 0x0

    .line 2558
    .local v16, "isRunning":Z
    move-object/from16 p7, v5

    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local p7, "sInfo":Landroid/content/pm/ServiceInfo;
    iget-object v5, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v6

    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v34, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v37, v8

    const/4 v8, 0x0

    .end local v8  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v37, "processRecord":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 2559
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_9d5

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_9d5

    .line 2560
    const/4 v5, 0x1

    move/from16 v38, v5

    .end local v16  # "isRunning":Z
    .local v5, "isRunning":Z
    goto :goto_9d7

    .line 2563
    .end local v5  # "isRunning":Z
    .restart local v16  # "isRunning":Z
    :cond_9d5
    move/from16 v38, v16

    .end local v16  # "isRunning":Z
    .local v38, "isRunning":Z
    :goto_9d7
    iget-object v5, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6, v14}, Lcom/android/server/am/ActivityManagerService;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v7

    .line 2564
    .local v7, "isTop":Z
    nop

    .line 2575
    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;

    move-result-object v23

    .line 2577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const/16 v27, 0x0

    .line 2565
    const-string/jumbo v21, "retrieve_service"

    move-object v6, v15

    move v15, v7

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v18, v3

    move-object/from16 v19, v33

    move-object/from16 v20, v32

    move/from16 v22, v2

    move/from16 v24, p5

    move/from16 v28, v38

    invoke-static/range {v15 .. v28}, Lcom/android/server/hips/intercept/Interception;->isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z

    move-result v15

    .line 2580
    .restart local v15  # "isIntercept":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTERCEPT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " fg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isIntercept "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2581
    .local v6, "events":Ljava/lang/String;
    const v5, 0xdc3372

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2582
    move-object/from16 v16, v1

    .end local v1  # "calleeClass":Ljava/lang/String;
    .local v16, "calleeClass":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v17, v2

    .end local v2  # "realCallingPid":I
    .local v17, "realCallingPid":I
    move-object v2, v0

    .end local v3  # "calleeUid":I
    .local v18, "calleeUid":I
    move-object/from16 v3, p4

    move-object/from16 v19, v4

    .end local v4  # "calleePkg":Ljava/lang/String;
    .local v19, "calleePkg":Ljava/lang/String;
    move-object/from16 v20, p7

    .end local p7  # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v20, "sInfo":Landroid/content/pm/ServiceInfo;
    move/from16 v5, p5

    move-object/from16 v13, p12

    move-object/from16 v22, v6

    move-object/from16 v21, v34

    .end local v6  # "events":Ljava/lang/String;
    .end local v34  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v21, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v22, "events":Ljava/lang/String;
    move/from16 v6, p6

    move/from16 v23, v7

    .end local v7  # "isTop":Z
    .local v23, "isTop":Z
    move/from16 v7, v18

    move-object/from16 v25, v8

    move-object/from16 v24, v37

    .end local v8  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v37  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v24, "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v25, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v8, p1

    move v9, v15

    move-object/from16 p7, v10

    move-object/from16 v11, v30

    .end local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .local p7, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v10, p12

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->hook_retrieveService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;ZLjava/lang/String;)V

    .line 2584
    if-eqz v15, :cond_ab0

    .line 2585
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v1, :cond_aaf

    .line 2586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " skipped <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2586
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_aaf
    return-object v11

    .line 2592
    :cond_ab0
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    .end local p7  # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    invoke-direct {v1, v2, v3, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v1

    .line 2543
    .end local v0  # "callerPkg":Ljava/lang/String;
    .end local v15  # "isIntercept":Z
    .end local v16  # "calleeClass":Ljava/lang/String;
    .end local v17  # "realCallingPid":I
    .end local v18  # "calleeUid":I
    .end local v19  # "calleePkg":Ljava/lang/String;
    .end local v20  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v21  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v22  # "events":Ljava/lang/String;
    .end local v23  # "isTop":Z
    .end local v24  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v38  # "isRunning":Z
    .local v1, "callerPkg":Ljava/lang/String;
    .restart local v2  # "realCallingPid":I
    .local v3, "calleeUid":I
    .restart local v4  # "calleePkg":Ljava/lang/String;
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .local p7, "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_aba
    move-exception v0

    move-object/from16 v24, p7

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v10

    move-object v2, v11

    move-object v13, v15

    move-object/from16 v16, v24

    .end local v2  # "realCallingPid":I
    .end local v4  # "calleePkg":Ljava/lang/String;
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p7  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    .restart local v17  # "realCallingPid":I
    .restart local v18  # "calleeUid":I
    .restart local v19  # "calleePkg":Ljava/lang/String;
    .restart local v20  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v21  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24  # "processRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_adb

    .end local v17  # "realCallingPid":I
    .end local v18  # "calleeUid":I
    .end local v19  # "calleePkg":Ljava/lang/String;
    .end local v20  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v21  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v24  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v2  # "realCallingPid":I
    .local v3, "calleeUid":I
    .restart local v4  # "calleePkg":Ljava/lang/String;
    .restart local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .local v16, "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_acd
    move-exception v0

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v10

    move-object v2, v11

    move-object v13, v15

    .end local v2  # "realCallingPid":I
    .end local v4  # "calleePkg":Ljava/lang/String;
    .end local v5  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    .restart local v17  # "realCallingPid":I
    .restart local v18  # "calleeUid":I
    .restart local v19  # "calleePkg":Ljava/lang/String;
    .restart local v20  # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v21  # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_adb
    :try_start_adb
    monitor-exit v8
    :try_end_adc
    .catchall {:try_start_adb .. :try_end_adc} :catchall_add

    throw v0

    :catchall_add
    move-exception v0

    goto :goto_adb

    .line 2594
    .end local v1  # "callerPkg":Ljava/lang/String;
    .end local v3  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v16  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v17  # "realCallingPid":I
    .end local v18  # "calleeUid":I
    .end local v19  # "calleePkg":Ljava/lang/String;
    .end local v20  # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v21  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v31  # "flags":I
    .end local v32  # "retrieveService":Landroid/content/Intent;
    .end local v33  # "sProcessName":Ljava/lang/String;
    .restart local v10  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_adf
    move-object v2, v11

    const/4 v11, 0x0

    return-object v11

    .line 2254
    .end local v10  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v29  # "userId":I
    .end local v35  # "comp":Landroid/content/ComponentName;
    .end local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    .local v1, "realComp":Landroid/content/ComponentName;
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v6, "userId":I
    :cond_ae2
    move-object/from16 v36, v5

    move v4, v6

    .end local v5  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6  # "userId":I
    .local v4, "userId":I
    .restart local v36  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t use custom instance name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' without expicit component in Intent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 31
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"  # Z

    .line 2683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 2685
    .local v3, "canceled":Z
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "ActivityManager"

    if-eqz v4, :cond_30

    .line 2686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not scheduling restart of crashed service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - system is shutting down"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    return v5

    .line 2691
    :cond_30
    iget v4, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    .line 2692
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v1, :cond_67

    .line 2693
    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2694
    .local v7, "cur":Lcom/android/server/am/ServiceRecord;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting to schedule restart of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " when found in map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    return v5

    .line 2699
    .end local v7  # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2701
    .local v7, "now":J
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_31c

    .line 2703
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 2704
    .local v14, "minDuration":J
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 2708
    .local v11, "resetTime":J
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2709
    .local v9, "N":I
    const-string v13, " allowCancel "

    if-lez v9, :cond_162

    .line 2710
    add-int/lit8 v18, v9, -0x1

    move/from16 v27, v18

    move/from16 v18, v3

    move/from16 v3, v27

    .local v3, "i":I
    .local v18, "canceled":Z
    :goto_93
    if-ltz v3, :cond_156

    .line 2711
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2712
    .local v5, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 2713
    iget-object v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v10, :cond_ac

    move-object/from16 v19, v4

    move-wide/from16 v22, v7

    move/from16 v20, v9

    goto/16 :goto_14b

    .line 2715
    :cond_ac
    if-eqz v2, :cond_e3

    iget v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move-object/from16 v19, v4

    const/4 v4, 0x3

    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-ge v10, v4, :cond_bb

    iget v4, v5, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v10, 0x6

    if-ge v4, v10, :cond_bb

    goto :goto_e5

    .line 2731
    :cond_bb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceling start item "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " in service "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/4 v4, 0x1

    move/from16 v18, v4

    move-wide/from16 v22, v7

    move/from16 v20, v9

    .end local v18  # "canceled":Z
    .local v4, "canceled":Z
    goto :goto_14b

    .line 2715
    .end local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v18  # "canceled":Z
    :cond_e3
    move-object/from16 v19, v4

    .line 2717
    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_e5
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v22, v7

    .end local v7  # "now":J
    .local v22, "now":J
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v20, v20, v7

    .line 2719
    .local v20, "dur":J
    const-wide/16 v7, 0x2

    mul-long v7, v7, v20

    .line 2720
    .end local v20  # "dur":J
    .local v7, "dur":J
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v4, :cond_13c

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_13c

    .line 2721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can add more delay !!! si.deliveredTime "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v9

    .end local v9  # "N":I
    .local v20, "N":I
    iget-wide v9, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " dur "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " si.deliveryCount "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " si.doneExecutingCount "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 2720
    .end local v20  # "N":I
    .restart local v9  # "N":I
    :cond_13c
    move/from16 v20, v9

    .line 2728
    .end local v9  # "N":I
    .restart local v20  # "N":I
    :goto_13e
    cmp-long v4, v14, v7

    if-gez v4, :cond_144

    move-wide v9, v7

    move-wide v14, v9

    .line 2729
    :cond_144
    cmp-long v4, v11, v7

    if-gez v4, :cond_14a

    move-wide v9, v7

    move-wide v11, v9

    .line 2730
    .end local v7  # "dur":J
    :cond_14a
    nop

    .line 2710
    .end local v5  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :goto_14b
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v19

    move/from16 v9, v20

    move-wide/from16 v7, v22

    const/4 v5, 0x0

    goto/16 :goto_93

    .end local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20  # "N":I
    .end local v22  # "now":J
    .restart local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v7, "now":J
    .restart local v9  # "N":I
    :cond_156
    move-object/from16 v19, v4

    move-wide/from16 v22, v7

    move/from16 v20, v9

    .line 2736
    .end local v3  # "i":I
    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7  # "now":J
    .end local v9  # "N":I
    .restart local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20  # "N":I
    .restart local v22  # "now":J
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_16a

    .line 2709
    .end local v18  # "canceled":Z
    .end local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20  # "N":I
    .end local v22  # "now":J
    .local v3, "canceled":Z
    .restart local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7  # "now":J
    .restart local v9  # "N":I
    :cond_162
    move-object/from16 v19, v4

    move-wide/from16 v22, v7

    move/from16 v20, v9

    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7  # "now":J
    .end local v9  # "N":I
    .restart local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20  # "N":I
    .restart local v22  # "now":J
    move/from16 v18, v3

    .line 2739
    .end local v3  # "canceled":Z
    .restart local v18  # "canceled":Z
    :goto_16a
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2740
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    const-string v4, " r.restartTime+resetTime "

    const-string v5, " r.restartDelay "

    const-string v7, " now "

    const-string v8, " resetTime "

    const-string v9, " minDuration "

    const-string v10, " N "

    const-string/jumbo v0, "r.name "

    if-eqz v3, :cond_1d9

    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_1d9

    .line 2741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v20

    .end local v20  # "N":I
    .local v0, "N":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    move-wide/from16 v7, v22

    .end local v22  # "now":J
    .restart local v7  # "now":J
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e7

    .line 2740
    .end local v0  # "N":I
    .end local v7  # "now":J
    .restart local v20  # "N":I
    .restart local v22  # "now":J
    :cond_1d9
    move-object/from16 v21, v0

    move-object/from16 v24, v8

    move/from16 v0, v20

    move-object/from16 v20, v7

    move-wide/from16 v7, v22

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 2747
    .end local v20  # "N":I
    .end local v22  # "now":J
    .restart local v0  # "N":I
    .restart local v7  # "now":J
    :goto_1e7
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v3, v9, v16

    if-nez v3, :cond_204

    .line 2748
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2749
    iput-wide v14, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v10, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v25, v7

    move-object/from16 v3, v21

    move-object/from16 v21, v6

    goto :goto_251

    .line 2750
    :cond_204
    const/4 v9, 0x1

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v3, v9, :cond_224

    .line 2751
    move-object/from16 v10, p0

    move-object/from16 v3, v21

    iget-object v9, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v9, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget v9, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move-object/from16 v21, v6

    const/4 v6, 0x1

    sub-int/2addr v9, v6

    move-wide/from16 v25, v7

    .end local v7  # "now":J
    .local v25, "now":J
    int-to-long v6, v9

    mul-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_251

    .line 2759
    .end local v25  # "now":J
    .restart local v7  # "now":J
    :cond_224
    move-object/from16 v10, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v25, v7

    move-object/from16 v3, v21

    move-object/from16 v21, v6

    .end local v7  # "now":J
    .restart local v25  # "now":J
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v4, v11

    cmp-long v4, v25, v4

    if-lez v4, :cond_23d

    .line 2760
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2761
    iput-wide v14, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_251

    .line 2763
    :cond_23d
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v6, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2764
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v4, v4, v14

    if-gez v4, :cond_251

    .line 2765
    iput-wide v14, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2770
    :cond_251
    :goto_251
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long v7, v25, v4

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2771
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v4, :cond_2bd

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_2bd

    .line 2772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v25

    .end local v25  # "now":J
    .local v5, "now":J
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v11

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " r.nextRestartTime "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c1

    .line 2771
    .end local v5  # "now":J
    .restart local v25  # "now":J
    :cond_2bd
    move-object/from16 v4, v21

    move-wide/from16 v5, v25

    .line 2784
    .end local v25  # "now":J
    .restart local v5  # "now":J
    :goto_2c1
    const/4 v3, 0x0

    .line 2785
    .local v3, "repeat":Z
    iget-object v7, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 2786
    .local v7, "restartTimeBetween":J
    iget-object v9, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    .local v9, "i":I
    :goto_2d0
    if-ltz v9, :cond_30d

    .line 2787
    iget-object v13, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 2788
    .local v13, "r2":Lcom/android/server/am/ServiceRecord;
    if-eq v13, v1, :cond_300

    move/from16 v16, v3

    .end local v3  # "repeat":Z
    .local v16, "repeat":Z
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v11

    .end local v11  # "resetTime":J
    .local v20, "resetTime":J
    iget-wide v11, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v11, v7

    cmp-long v2, v2, v11

    if-ltz v2, :cond_304

    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v11, v7

    cmp-long v2, v2, v11

    if-gez v2, :cond_304

    .line 2790
    iget-wide v2, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2791
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v2, v5

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2792
    const/4 v3, 0x1

    .line 2793
    .end local v16  # "repeat":Z
    .restart local v3  # "repeat":Z
    move/from16 v16, v3

    goto :goto_311

    .line 2788
    .end local v20  # "resetTime":J
    .restart local v11  # "resetTime":J
    :cond_300
    move/from16 v16, v3

    move-wide/from16 v20, v11

    .line 2786
    .end local v3  # "repeat":Z
    .end local v11  # "resetTime":J
    .end local v13  # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v16  # "repeat":Z
    .restart local v20  # "resetTime":J
    :cond_304
    add-int/lit8 v9, v9, -0x1

    move/from16 v2, p2

    move/from16 v3, v16

    move-wide/from16 v11, v20

    goto :goto_2d0

    .end local v16  # "repeat":Z
    .end local v20  # "resetTime":J
    .restart local v3  # "repeat":Z
    .restart local v11  # "resetTime":J
    :cond_30d
    move/from16 v16, v3

    move-wide/from16 v20, v11

    .line 2796
    .end local v3  # "repeat":Z
    .end local v7  # "restartTimeBetween":J
    .end local v9  # "i":I
    .end local v11  # "resetTime":J
    .restart local v16  # "repeat":Z
    .restart local v20  # "resetTime":J
    :goto_311
    if-nez v16, :cond_317

    .line 2798
    .end local v0  # "N":I
    .end local v14  # "minDuration":J
    .end local v16  # "repeat":Z
    .end local v20  # "resetTime":J
    move/from16 v3, v18

    const/4 v0, 0x0

    goto :goto_330

    .line 2796
    .restart local v0  # "N":I
    .restart local v14  # "minDuration":J
    .restart local v16  # "repeat":Z
    .restart local v20  # "resetTime":J
    :cond_317
    move/from16 v2, p2

    move-wide/from16 v11, v20

    goto :goto_2c1

    .line 2801
    .end local v0  # "N":I
    .end local v5  # "now":J
    .end local v14  # "minDuration":J
    .end local v16  # "repeat":Z
    .end local v18  # "canceled":Z
    .end local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20  # "resetTime":J
    .local v3, "canceled":Z
    .restart local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v7, "now":J
    :cond_31c
    move-object v10, v0

    move-object/from16 v19, v4

    move-object v4, v6

    move-wide v5, v7

    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7  # "now":J
    .restart local v5  # "now":J
    .restart local v19  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2802
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2803
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2804
    iput-wide v5, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2807
    :goto_330
    iget-object v2, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34a

    .line 2808
    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 2809
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 2813
    :cond_34a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2815
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2816
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v11

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling restart of crashed service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v0, :cond_3d5

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_3d5

    .line 2822
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_3a0
    if-ltz v0, :cond_3d5

    .line 2823
    iget-object v2, v10, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2824
    .local v2, "r2":Lcom/android/server/am/ServiceRecord;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restarting list - i "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " r2.nextRestartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " r2.name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    .end local v2  # "r2":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a0

    .line 2829
    .end local v0  # "i":I
    :cond_3d5
    const/16 v0, 0x7553

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 2830
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v2, v7

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v2, v7

    const/4 v4, 0x2

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    .line 2829
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2832
    return v3
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 16
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"  # Z
    .param p3, "oomAdjusted"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3274
    const-string v0, "Failed delivering service starts"

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3275
    .local v1, "N":I
    if-nez v1, :cond_b

    .line 3276
    return-void

    .line 3279
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3281
    .local v2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ServiceStartArgs;>;"
    :goto_10
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ActivityManager"

    if-lez v3, :cond_101

    .line 3282
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3283
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_4f

    .line 3284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending arguments to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    :cond_4f
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    if-nez v6, :cond_57

    if-le v1, v7, :cond_57

    .line 3292
    goto :goto_10

    .line 3294
    :cond_57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 3295
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3297
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v6, :cond_78

    .line 3298
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3299
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v9

    .line 3298
    invoke-interface {v6, v8, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3301
    :cond_78
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    iget v11, v3, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 3302
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3301
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 3303
    const-string/jumbo v6, "start"

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3304
    if-nez p3, :cond_a2

    .line 3305
    const/4 p3, 0x1

    .line 3306
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v9, "updateOomAdj_startService"

    invoke-virtual {v6, v8, v7, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3308
    :cond_a2
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_e4

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v6, :cond_e4

    .line 3309
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_ca

    .line 3310
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v4, :cond_c6

    .line 3311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launched service must call startForeground() within timeout: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_c6
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_e4

    .line 3315
    :cond_ca
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v6, :cond_e2

    .line 3316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service already foreground; no new timeout: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    :cond_e2
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3321
    :cond_e4
    :goto_e4
    const/4 v4, 0x0

    .line 3322
    .local v4, "flags":I
    iget v5, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v5, v7, :cond_eb

    .line 3323
    or-int/lit8 v4, v4, 0x2

    .line 3325
    :cond_eb
    iget v5, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v5, :cond_f1

    .line 3326
    or-int/lit8 v4, v4, 0x1

    .line 3328
    :cond_f1
    new-instance v5, Landroid/app/ServiceStartArgs;

    iget-boolean v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6, v7, v4, v8}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3329
    .end local v3  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v4  # "flags":I
    goto/16 :goto_10

    .line 3331
    :cond_101
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 3332
    .local v3, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ServiceStartArgs;>;"
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 3333
    const/4 v6, 0x0

    .line 3335
    .local v6, "caughtException":Ljava/lang/Exception;
    :try_start_10b
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v7, p1, v3}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_112
    .catch Landroid/os/TransactionTooLargeException; {:try_start_10b .. :try_end_112} :catch_139
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_112} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_112} :catch_113

    goto :goto_16a

    .line 3346
    :catch_113
    move-exception v0

    .line 3347
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unexpected exception"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3348
    move-object v6, v0

    goto :goto_16b

    .line 3341
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_11b
    move-exception v4

    .line 3343
    .local v4, "e":Landroid/os/RemoteException;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_134

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crashed while sending args: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :cond_134
    invoke-static {v5, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3345
    move-object v6, v4

    .end local v4  # "e":Landroid/os/RemoteException;
    goto :goto_16a

    .line 3336
    :catch_139
    move-exception v7

    .line 3337
    .local v7, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v8, :cond_166

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction too large for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " args, first: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ServiceStartArgs;

    iget-object v4, v4, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3337
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_166
    invoke-static {v5, v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3340
    move-object v6, v7

    .line 3349
    .end local v7  # "e":Landroid/os/TransactionTooLargeException;
    :goto_16a
    nop

    .line 3351
    :goto_16b
    if-eqz v6, :cond_189

    .line 3353
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3354
    .local v0, "inDestroying":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_174
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_180

    .line 3355
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3354
    add-int/lit8 v4, v4, 0x1

    goto :goto_174

    .line 3357
    .end local v4  # "i":I
    :cond_180
    instance-of v4, v6, Landroid/os/TransactionTooLargeException;

    if-nez v4, :cond_185

    goto :goto_189

    .line 3358
    :cond_185
    move-object v4, v6

    check-cast v4, Landroid/os/TransactionTooLargeException;

    throw v4

    .line 3361
    .end local v0  # "inDestroying":Z
    :cond_189
    :goto_189
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"  # Z
    .param p3, "finishing"  # Z

    .line 3802
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v1, "<<< DONE EXECUTING "

    const-string v2, "ActivityManager"

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inDestroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 3805
    :cond_37
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    :cond_4f
    :goto_4f
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3808
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_156

    .line 3809
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_10a

    .line 3810
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nesting at 0 of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    :cond_78
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3813
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3814
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_b7

    .line 3815
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v0, :cond_95

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_ab

    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more executingServices of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    :cond_ab
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0xc

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_dc

    .line 3818
    :cond_b7
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v0, :cond_dc

    .line 3820
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_c4
    if-ltz v0, :cond_dc

    .line 3821
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_d9

    .line 3822
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v4, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3823
    goto :goto_dc

    .line 3820
    :cond_d9
    add-int/lit8 v0, v0, -0x1

    goto :goto_c4

    .line 3827
    .end local v0  # "i":I
    :cond_dc
    :goto_dc
    if-eqz p2, :cond_100

    .line 3828
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_f6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doneExecuting remove destroying "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_f6
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3831
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3833
    :cond_100
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3835
    :cond_10a
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3836
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_130

    .line 3837
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3838
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3839
    .local v4, "now":J
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3840
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3841
    if-eqz p3, :cond_130

    .line 3842
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3843
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3846
    .end local v0  # "memFactor":I
    .end local v4  # "now":J
    :cond_130
    if-eqz p3, :cond_156

    .line 3847
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_153

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_153

    .line 3848
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3849
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3850
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_153

    .line 3851
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3854
    :cond_153
    invoke-virtual {p1, v1}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3857
    :cond_156
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 3789
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_25

    .line 3790
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3791
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3792
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3793
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3794
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3795
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3797
    .end local v0  # "memFactor":I
    .end local v1  # "now":J
    :cond_25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3798
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .registers 28
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "id"  # I
    .param p3, "notification"  # Landroid/app/Notification;
    .param p4, "flags"  # I
    .param p5, "foregroundServiceType"  # I

    .line 1353
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v5, 0x4c

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_2f2

    .line 1354
    if-eqz v4, :cond_2e7

    .line 1358
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    const-string/jumbo v10, "startForeground"

    const-string v11, "ActivityManager"

    if-eqz v9, :cond_86

    .line 1359
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v12, 0x44

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    .line 1363
    .local v9, "mode":I
    if-eqz v9, :cond_82

    const-string v12, "Instant app "

    if-eq v9, v8, :cond_66

    if-eq v9, v6, :cond_48

    .line 1375
    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v12, v15, v13, v14, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_83

    .line 1372
    :cond_48
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not have permission to create foreground services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void

    .line 1365
    :cond_82
    nop

    .line 1379
    .end local v9  # "mode":I
    :goto_83
    move/from16 v10, p5

    goto :goto_af

    .line 1380
    :cond_86
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1c

    if-lt v9, v12, :cond_9d

    .line 1381
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v9, v14, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1386
    :cond_9d
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    .line 1389
    .local v9, "manifestType":I
    const/4 v10, -0x1

    move/from16 v12, p5

    if-ne v12, v10, :cond_aa

    .line 1390
    move v10, v9

    .end local p5  # "foregroundServiceType":I
    .local v10, "foregroundServiceType":I
    goto :goto_ab

    .line 1389
    .end local v10  # "foregroundServiceType":I
    .restart local p5  # "foregroundServiceType":I
    :cond_aa
    move v10, v12

    .line 1394
    .end local p5  # "foregroundServiceType":I
    .restart local v10  # "foregroundServiceType":I
    :goto_ab
    and-int v12, v10, v9

    if-ne v12, v10, :cond_2a7

    .line 1402
    .end local v9  # "manifestType":I
    :goto_af
    const/4 v9, 0x0

    .line 1403
    .local v9, "alreadyStartedOp":Z
    const/4 v12, 0x0

    .line 1404
    .local v12, "stopProcStatsOp":Z
    iget-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v13, :cond_e0

    .line 1405
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v13, :cond_bd

    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v13, :cond_d1

    .line 1406
    :cond_bd
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service called startForeground() as required: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_d1
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1409
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1410
    move v12, v8

    move v9, v8

    .line 1411
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v14, 0x42

    invoke-virtual {v13, v14, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1416
    :cond_e0
    const/4 v13, 0x0

    .line 1417
    .local v13, "ignoreForeground":Z
    :try_start_e1
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v5, v15, v0}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 1419
    .local v0, "mode":I
    if-eqz v0, :cond_117

    if-eq v0, v8, :cond_ff

    const/4 v14, 0x3

    if-ne v0, v14, :cond_f7

    goto :goto_117

    .line 1431
    :cond_f7
    new-instance v6, Ljava/lang/SecurityException;

    const-string v8, "Foreground not allowed as per app op"

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v9  # "alreadyStartedOp":Z
    .end local v10  # "foregroundServiceType":I
    .end local v12  # "stopProcStatsOp":Z
    .end local p0  # "this":Lcom/android/server/am/ActiveServices;
    .end local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2  # "id":I
    .end local p3  # "notification":Landroid/app/Notification;
    .end local p4  # "flags":I
    throw v6

    .line 1426
    .restart local v9  # "alreadyStartedOp":Z
    .restart local v10  # "foregroundServiceType":I
    .restart local v12  # "stopProcStatsOp":Z
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1  # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2  # "id":I
    .restart local p3  # "notification":Landroid/app/Notification;
    .restart local p4  # "flags":I
    :cond_ff
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v13, 0x1

    .line 1429
    goto :goto_118

    .line 1423
    :cond_117
    :goto_117
    nop

    .line 1436
    :goto_118
    if-nez v13, :cond_14c

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1437
    invoke-direct {v1, v14}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v14

    if-nez v14, :cond_14c

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1438
    invoke-direct {v1, v14, v15}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14c

    .line 1439
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v14, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1445
    const/4 v13, 0x1

    .line 1452
    :cond_14c
    if-nez v13, :cond_22d

    .line 1453
    iget v11, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v11, v3, :cond_157

    .line 1454
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1455
    iput v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1457
    :cond_157
    iget v11, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v4, Landroid/app/Notification;->flags:I

    .line 1458
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1459
    iput v10, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1460
    iget-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v11, :cond_20c

    .line 1461
    iget v11, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v11

    .line 1462
    .local v11, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v11, :cond_1bc

    .line 1463
    iget-object v14, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1464
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1465
    .local v14, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-nez v14, :cond_1b7

    .line 1466
    new-instance v15, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v15}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    move-object v14, v15

    .line 1467
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v15, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1468
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v15, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1469
    iget-boolean v15, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v15, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1470
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_1a2

    .line 1471
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1472
    invoke-virtual {v15}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v15

    if-gt v15, v6, :cond_19d

    move v15, v8

    goto :goto_19e

    :cond_19d
    move v15, v7

    :goto_19e
    iput-boolean v15, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v15, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1475
    :cond_1a2
    nop

    .line 1476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v5, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1477
    iget-object v5, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-wide/16 v5, 0x0

    invoke-direct {v1, v11, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1480
    :cond_1b7
    iget v5, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v5, v8

    iput v5, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1482
    .end local v14  # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_1bc
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1483
    if-nez v12, :cond_1d5

    .line 1484
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 1485
    .local v5, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v5, :cond_1d4

    .line 1486
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1487
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1486
    const/4 v14, 0x1

    invoke-virtual {v5, v14, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1489
    .end local v5  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1d4
    goto :goto_1d7

    .line 1490
    :cond_1d5
    const/4 v5, 0x0

    .end local v12  # "stopProcStatsOp":Z
    .local v5, "stopProcStatsOp":Z
    move v12, v5

    .line 1492
    .end local v5  # "stopProcStatsOp":Z
    .restart local v12  # "stopProcStatsOp":Z
    :goto_1d7
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1493
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x4c

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v21, 0x1

    .line 1492
    move-object/from16 v16, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 1496
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/16 v7, 0x3c

    const/4 v8, 0x1

    invoke-static {v7, v5, v6, v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1499
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v7, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1501
    .end local v11  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_20c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1502
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_219

    .line 1503
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1505
    :cond_219
    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1506
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    goto :goto_245

    .line 1509
    :cond_22d
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_245

    .line 1510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suppressing startForeground() for FAS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_245
    .catchall {:try_start_e1 .. :try_end_245} :catchall_276

    .line 1514
    .end local v0  # "mode":I
    .end local v13  # "ignoreForeground":Z
    :cond_245
    :goto_245
    if-eqz v12, :cond_25b

    .line 1517
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1518
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_25b

    .line 1519
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1523
    .end local v0  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_25b
    if-eqz v9, :cond_274

    .line 1526
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1527
    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1526
    const/16 v8, 0x4c

    invoke-virtual {v0, v5, v8, v6, v7}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1531
    .end local v9  # "alreadyStartedOp":Z
    .end local v12  # "stopProcStatsOp":Z
    :cond_274
    goto/16 :goto_37a

    .line 1514
    .restart local v9  # "alreadyStartedOp":Z
    .restart local v12  # "stopProcStatsOp":Z
    :catchall_276
    move-exception v0

    if-eqz v12, :cond_28d

    .line 1517
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 1518
    .local v5, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v5, :cond_28d

    .line 1519
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1523
    .end local v5  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_28d
    if-eqz v9, :cond_2a6

    .line 1526
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1527
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1526
    const/16 v11, 0x4c

    invoke-virtual {v5, v6, v11, v7, v8}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    :cond_2a6
    throw v0

    .line 1395
    .end local v12  # "stopProcStatsOp":Z
    .local v9, "manifestType":I
    :cond_2a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "foregroundServiceType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 1396
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v7, v11

    const-string v8, "0x%08X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    .line 1398
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in service element of manifest file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    .end local v9  # "manifestType":I
    .end local v10  # "foregroundServiceType":I
    .restart local p5  # "foregroundServiceType":I
    :cond_2e7
    move/from16 v12, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null notification"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_2f2
    move/from16 v12, p5

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_358

    .line 1533
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1534
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_304

    .line 1535
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1537
    :cond_304
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v7

    .line 1539
    .local v7, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v7, :cond_31a

    .line 1540
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    iget-wide v9, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1543
    :cond_31a
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1544
    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1543
    const/16 v11, 0x4c

    invoke-virtual {v6, v8, v11, v9, v10}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1546
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/16 v9, 0x3c

    const/4 v10, 0x2

    invoke-static {v9, v6, v8, v10}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1549
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v9, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1550
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_358

    .line 1551
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v8, v10, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1552
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    invoke-direct {v1, v6, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1555
    .end local v0  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_358
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_365

    .line 1556
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1557
    const/4 v6, 0x0

    iput v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1558
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_379

    .line 1559
    :cond_365
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_379

    .line 1560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 1561
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_379

    .line 1562
    const/4 v6, 0x0

    iput v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1563
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1567
    :cond_379
    :goto_379
    move v10, v12

    .end local p5  # "foregroundServiceType":I
    .restart local v10  # "foregroundServiceType":I
    :goto_37a
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "service"  # Lcom/android/server/am/ServiceRecord;

    .line 807
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_22

    .line 811
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delaying stop of pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 813
    return-void

    .line 815
    :cond_22
    const/16 v0, 0x63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 816
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 815
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 818
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 819
    :try_start_3f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 820
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_63

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 822
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_5d

    .line 823
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 823
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 826
    :cond_5d
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 828
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 829
    return-void

    .line 820
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 8
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"  # I
    .param p3, "force"  # Z

    .line 2885
    if-nez p3, :cond_c

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 2886
    const/4 v0, 0x0

    return v0

    .line 2891
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 2892
    .local v0, "removed":Z
    if-nez v0, :cond_1a

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_1d

    .line 2893
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 2895
    :cond_1d
    if-eqz v0, :cond_22

    .line 2896
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2898
    :cond_22
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2899
    const/4 v1, 0x1

    return v1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .registers 15
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"  # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"  # Z

    .line 1633
    const/4 v0, 0x0

    if-eqz p2, :cond_14

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_14

    .line 1634
    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1637
    return v0

    .line 1641
    :cond_14
    const/4 v1, 0x0

    .line 1642
    .local v1, "anyClientActivities":Z
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_6b

    if-nez v1, :cond_6b

    .line 1643
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1644
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1645
    .local v5, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "conni":I
    :goto_32
    if-ltz v6, :cond_68

    if-nez v1, :cond_68

    .line 1646
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1647
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "cri":I
    :goto_41
    if-ltz v8, :cond_65

    .line 1648
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 1649
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_62

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_56

    .line 1651
    goto :goto_62

    .line 1653
    :cond_56
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_62

    .line 1654
    const/4 v1, 0x1

    .line 1655
    goto :goto_65

    .line 1647
    .end local v9  # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_62
    :goto_62
    add-int/lit8 v8, v8, -0x1

    goto :goto_41

    .line 1645
    .end local v7  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8  # "cri":I
    :cond_65
    :goto_65
    add-int/lit8 v6, v6, -0x1

    goto :goto_32

    .line 1642
    .end local v4  # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v5  # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6  # "conni":I
    :cond_68
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 1660
    .end local v2  # "i":I
    :cond_6b
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-eq v1, v2, :cond_7d

    .line 1661
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setHasClientActivities(Z)V

    .line 1662
    if-eqz p3, :cond_7c

    .line 1663
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1665
    :cond_7c
    return v3

    .line 1667
    :cond_7d
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 8
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"  # Z

    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, "anyForeground":Z
    const/4 v1, 0x0

    .line 1593
    .local v1, "fgServiceTypes":I
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_23

    .line 1594
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1595
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_1c

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_20

    .line 1596
    :cond_1c
    const/4 v0, 0x1

    .line 1597
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v1, v4

    .line 1593
    .end local v3  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1600
    .end local v2  # "i":I
    :cond_23
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 1601
    return-void
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 1604
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1605
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1f

    .line 1606
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1607
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_1c

    .line 1608
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1609
    goto :goto_1f

    .line 1605
    .end local v2  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1612
    .end local v0  # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 11
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3861
    const/4 v0, 0x0

    .line 3863
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_75

    .line 3864
    const/4 v1, 0x0

    .line 3866
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 3867
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    move-object v1, v4

    .line 3868
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v4, :cond_32

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_57

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3869
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 3870
    goto :goto_57

    .line 3873
    :cond_32
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3874
    add-int/lit8 v3, v3, -0x1

    .line 3875
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3877
    iget-boolean v4, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 3878
    const/4 v0, 0x1

    .line 3879
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v4

    if-nez v4, :cond_57

    .line 3884
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_57} :catch_5b

    .line 3866
    :cond_57
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3891
    .end local v3  # "i":I
    :cond_5a
    goto :goto_75

    .line 3887
    :catch_5b
    move-exception v2

    .line 3888
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in new application when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3890
    throw v2

    .line 3897
    .end local v1  # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b8

    .line 3899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b8

    .line 3900
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3901
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_a3

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_b5

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3902
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 3903
    goto :goto_b5

    .line 3905
    :cond_a3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3906
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3899
    :cond_b5
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 3909
    .end local v1  # "i":I
    .end local v2  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_b8
    return v0
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 51
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "service"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "connection"  # Landroid/app/IServiceConnection;
    .param p6, "flags"  # I
    .param p7, "instanceName"  # Ljava/lang/String;
    .param p8, "callingPackage"  # Ljava/lang/String;
    .param p9, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 1674
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v0, p3

    move/from16 v10, p6

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v9, "ActivityManager"

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " conn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_47
    move-object/from16 v8, p4

    .line 1677
    :goto_49
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v15}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 1678
    .local v7, "callerApp":Lcom/android/server/am/ProcessRecord;
    const-string v1, " (pid="

    if-eqz v7, :cond_5bb

    .line 1685
    const/4 v2, 0x0

    .line 1686
    .local v2, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    if-eqz v13, :cond_78

    .line 1687
    iget-object v3, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v2

    .line 1688
    if-nez v2, :cond_76

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return v6

    .line 1688
    :cond_76
    move-object v5, v2

    goto :goto_79

    .line 1686
    :cond_78
    move-object v5, v2

    .line 1694
    .end local v2  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v5, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_79
    const/4 v2, 0x0

    .line 1695
    .local v2, "clientLabel":I
    const/4 v3, 0x0

    .line 1696
    .local v3, "clientIntent":Landroid/app/PendingIntent;
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v11, 0x3e8

    const/4 v12, 0x1

    if-ne v4, v11, :cond_86

    move v4, v12

    goto :goto_87

    :cond_86
    move v4, v6

    :goto_87
    move/from16 v16, v4

    .line 1698
    .local v16, "isCallerSystem":Z
    if-eqz v16, :cond_b7

    .line 1702
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setDefusable(Z)V

    .line 1703
    const-string v4, "android.intent.extra.client_intent"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/app/PendingIntent;

    .line 1704
    if-eqz v3, :cond_b1

    .line 1705
    const-string v4, "android.intent.extra.client_label"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1706
    if-eqz v2, :cond_ab

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    move-object v4, v0

    move/from16 v18, v2

    move-object/from16 v17, v3

    .end local p3  # "service":Landroid/content/Intent;
    .local v0, "service":Landroid/content/Intent;
    goto :goto_bc

    .line 1706
    .end local v0  # "service":Landroid/content/Intent;
    .restart local p3  # "service":Landroid/content/Intent;
    :cond_ab
    move-object v4, v0

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_bc

    .line 1704
    :cond_b1
    move-object v4, v0

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_bc

    .line 1698
    :cond_b7
    move-object v4, v0

    move/from16 v18, v2

    move-object/from16 v17, v3

    .line 1715
    .end local v2  # "clientLabel":I
    .end local v3  # "clientIntent":Landroid/app/PendingIntent;
    .end local p3  # "service":Landroid/content/Intent;
    .local v4, "service":Landroid/content/Intent;
    .local v17, "clientIntent":Landroid/app/PendingIntent;
    .local v18, "clientLabel":I
    :goto_bc
    const/high16 v19, 0x8000000

    and-int v0, v10, v19

    if-eqz v0, :cond_cb

    .line 1716
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_cb
    const/high16 v0, 0x80000

    and-int/2addr v0, v10

    if-eqz v0, :cond_f6

    if-eqz v16, :cond_d3

    goto :goto_f6

    .line 1721
    :cond_d3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1725
    :cond_f6
    :goto_f6
    const/high16 v20, 0x1000000

    and-int v0, v10, v20

    const-string v2, "Non-system caller "

    if-eqz v0, :cond_128

    if-eqz v16, :cond_101

    goto :goto_128

    .line 1726
    :cond_101
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_128
    :goto_128
    const/high16 v0, 0x400000

    and-int v3, v10, v0

    if-eqz v3, :cond_158

    if-eqz v16, :cond_131

    goto :goto_158

    .line 1732
    :cond_131
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1737
    :cond_158
    :goto_158
    const/high16 v21, 0x100000

    and-int v1, v10, v21

    if-eqz v1, :cond_167

    .line 1738
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v3, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_167
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_16d

    move v1, v12

    goto :goto_16e

    :cond_16d
    move v1, v6

    :goto_16e
    move v3, v1

    .line 1744
    .local v3, "callerFg":Z
    const/high16 v1, -0x80000000

    and-int/2addr v1, v10

    if-eqz v1, :cond_176

    move v11, v12

    goto :goto_177

    :cond_176
    move v11, v6

    .line 1745
    .local v11, "isBindExternal":Z
    :goto_177
    and-int/2addr v0, v10

    if-eqz v0, :cond_17c

    move v0, v12

    goto :goto_17d

    :cond_17c
    move v0, v6

    :goto_17d
    move v2, v12

    move v12, v0

    .line 1747
    .local v12, "allowInstant":Z
    nop

    .line 1749
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    const/16 v23, 0x1

    .line 1748
    const-string v24, "bind"

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 p3, v3

    .end local v3  # "callerFg":Z
    .local p3, "callerFg":Z
    move-object/from16 v3, p7

    move-object/from16 v26, v4

    .end local v4  # "service":Landroid/content/Intent;
    .local v26, "service":Landroid/content/Intent;
    move-object/from16 v4, p4

    move-object/from16 v27, v5

    .end local v5  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v27, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v5, p8

    move v6, v0

    move-object/from16 v28, v7

    .end local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v28, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v7, v22

    move/from16 v8, p9

    move-object v15, v9

    move/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v13, v24

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 1755
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v10, :cond_1b1

    .line 1756
    const/4 v13, 0x0

    return v13

    .line 1758
    :cond_1b1
    const/4 v13, 0x0

    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 v9, -0x1

    if-nez v0, :cond_1b8

    .line 1759
    return v9

    .line 1761
    :cond_1b8
    iget-object v8, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 1763
    .local v8, "s":Lcom/android/server/am/ServiceRecord;
    const/4 v0, 0x0

    .line 1769
    .local v0, "permissionsReviewRequired":Z
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25a

    .line 1772
    const/4 v0, 0x1

    .line 1775
    const-string/jumbo v7, "u"

    move/from16 v6, p3

    .end local p3  # "callerFg":Z
    .local v6, "callerFg":Z
    if-nez v6, :cond_1f7

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Binding to a service in package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires a permissions review"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return v13

    .line 1781
    :cond_1f7
    move-object v3, v8

    .line 1782
    .local v3, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v4, v26

    .line 1784
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v5, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/am/ActiveServices$3;

    move-object v1, v2

    move-object v9, v2

    move-object/from16 v2, p0

    move-object v13, v5

    move v5, v6

    move/from16 v22, v6

    .end local v6  # "callerFg":Z
    .local v22, "callerFg":Z
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v13, v9}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v1, v13

    .line 1819
    .local v1, "callback":Landroid/os/RemoteCallback;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x18800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1823
    iget-object v5, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    const-string v5, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1826
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_249

    .line 1827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Launching permission review for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_249
    iget-object v5, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActiveServices$4;

    move/from16 v13, p9

    invoke-direct {v6, v14, v2, v13}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    move/from16 v23, v0

    goto :goto_260

    .line 1769
    .end local v1  # "callback":Landroid/os/RemoteCallback;
    .end local v2  # "intent":Landroid/content/Intent;
    .end local v3  # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    .end local v4  # "serviceIntent":Landroid/content/Intent;
    .end local v22  # "callerFg":Z
    .restart local p3  # "callerFg":Z
    :cond_25a
    move/from16 v22, p3

    move/from16 v13, p9

    .end local p3  # "callerFg":Z
    .restart local v22  # "callerFg":Z
    move/from16 v23, v0

    .line 1841
    .end local v0  # "permissionsReviewRequired":Z
    .local v23, "permissionsReviewRequired":Z
    :goto_260
    move/from16 v9, p6

    move-object/from16 v6, v26

    move-object/from16 v7, v28

    .end local v26  # "service":Landroid/content/Intent;
    .end local v28  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "service":Landroid/content/Intent;
    .restart local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct {v14, v8, v7, v6, v9}, Lcom/android/server/am/ActiveServices;->hook_freezeBindServiceProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;I)Z

    move-result v0

    const-string v5, " with "

    if-eqz v0, :cond_28e

    .line 1842
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_28c

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " skipped unfreeze <bind> service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_28c
    const/4 v1, 0x0

    return v1

    .line 1850
    :cond_28e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1853
    .local v28, "origId":J
    :try_start_292
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x0

    invoke-direct {v14, v8, v0, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0
    :try_end_29b
    .catchall {:try_start_292 .. :try_end_29b} :catchall_5a7

    if-eqz v0, :cond_2c8

    .line 1854
    :try_start_29d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIND SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c8

    .line 1991
    :catchall_2b6
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v10

    move/from16 v31, v11

    move/from16 p3, v12

    move/from16 v1, v22

    move-object/from16 v9, v27

    move-object v11, v8

    goto/16 :goto_5b7

    .line 1858
    :cond_2c8
    :goto_2c8
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2f1

    .line 1859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1860
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_2ef

    .line 1862
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1863
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_2ed

    .line 1864
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_2f2

    .line 1863
    :cond_2ed
    const/4 v4, 0x1

    goto :goto_2f2

    .line 1860
    .end local v0  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_2ef
    const/4 v4, 0x1

    goto :goto_2f2

    .line 1858
    :cond_2f1
    const/4 v4, 0x1

    .line 1870
    :goto_2f2
    const/high16 v0, 0x200000

    and-int/2addr v0, v9

    if-eqz v0, :cond_300

    .line 1871
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V
    :try_end_300
    .catchall {:try_start_29d .. :try_end_300} :catchall_2b6

    .line 1874
    :cond_300
    :try_start_300
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1875
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v33

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v5

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;
    :try_end_316
    .catchall {:try_start_300 .. :try_end_316} :catchall_5a7

    move-object/from16 v26, v10

    .end local v10  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v26, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :try_start_318
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1874
    move-object/from16 v30, v0

    move/from16 v31, v1

    move-object/from16 v32, v2

    move/from16 v34, v3

    move-wide/from16 v35, v4

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    invoke-virtual/range {v30 .. v38}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 1879
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1880
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1879
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1882
    invoke-virtual {v8, v6, v7}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v0

    move-object v10, v0

    .line 1883
    .local v10, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v30, Lcom/android/server/am/ConnectionRecord;

    iget v9, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_34b
    .catchall {:try_start_318 .. :try_end_34b} :catchall_598

    move-object/from16 v0, v30

    move-object v1, v10

    move-object/from16 v2, v27

    move-object/from16 v3, p5

    move/from16 v31, v11

    const/4 v11, 0x1

    .end local v11  # "isBindExternal":Z
    .local v31, "isBindExternal":Z
    move/from16 v4, p6

    move-object/from16 v39, v24

    move-object/from16 v24, v5

    move/from16 v5, v18

    move-object/from16 v25, v6

    .end local v6  # "service":Landroid/content/Intent;
    .local v25, "service":Landroid/content/Intent;
    move-object/from16 v6, v17

    move-object/from16 v40, v7

    .end local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v40, "callerApp":Lcom/android/server/am/ProcessRecord;
    move v7, v9

    move-object v9, v8

    .end local v8  # "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v8, v24

    move-object v11, v9

    move/from16 p3, v12

    const/4 v12, -0x1

    .end local v9  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12  # "allowInstant":Z
    .local v11, "s":Lcom/android/server/am/ServiceRecord;
    .local p3, "allowInstant":Z
    move-object/from16 v9, p8

    :try_start_36d
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v30

    .line 1887
    .local v7, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    .line 1888
    .local v8, "binder":Landroid/os/IBinder;
    invoke-virtual {v11, v8, v7}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 1889
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_37f
    .catchall {:try_start_36d .. :try_end_37f} :catchall_590

    .line 1890
    move-object/from16 v9, v27

    .end local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v9, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v9, :cond_38e

    .line 1891
    :try_start_383
    invoke-virtual {v9, v7}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V
    :try_end_386
    .catchall {:try_start_383 .. :try_end_386} :catchall_387

    goto :goto_38e

    .line 1991
    .end local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "binder":Landroid/os/IBinder;
    .end local v10  # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_387
    move-exception v0

    move/from16 v1, v22

    move-object/from16 v20, v40

    goto/16 :goto_5b7

    .line 1893
    .restart local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v8  # "binder":Landroid/os/IBinder;
    .restart local v10  # "b":Lcom/android/server/am/AppBindRecord;
    :cond_38e
    :goto_38e
    :try_start_38e
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1894
    invoke-virtual {v7}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 1895
    iget v0, v7, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_39a
    .catchall {:try_start_38e .. :try_end_39a} :catchall_58a

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3a3

    .line 1896
    :try_start_39e
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z
    :try_end_3a3
    .catchall {:try_start_39e .. :try_end_3a3} :catchall_387

    .line 1898
    :cond_3a3
    :try_start_3a3
    iget v0, v7, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_3a5
    .catchall {:try_start_3a3 .. :try_end_3a5} :catchall_58a

    and-int v0, v0, v20

    if-eqz v0, :cond_3ac

    .line 1899
    const/4 v1, 0x1

    :try_start_3aa
    iput-boolean v1, v11, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 1901
    :cond_3ac
    and-int v0, p6, v21

    if-eqz v0, :cond_3b4

    .line 1902
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V
    :try_end_3b4
    .catchall {:try_start_3aa .. :try_end_3b4} :catchall_387

    .line 1904
    :cond_3b4
    :try_start_3b4
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_3b6
    .catchall {:try_start_3b4 .. :try_end_3b6} :catchall_58a

    if-eqz v0, :cond_3be

    .line 1905
    :try_start_3b8
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    invoke-direct {v14, v0, v7, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_3be
    .catchall {:try_start_3b8 .. :try_end_3be} :catchall_387

    .line 1907
    :cond_3be
    :try_start_3be
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_3c6
    .catchall {:try_start_3be .. :try_end_3c6} :catchall_58a

    .line 1908
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_3d5

    .line 1909
    :try_start_3c8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1910
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d3
    .catchall {:try_start_3c8 .. :try_end_3d3} :catchall_387

    move-object v6, v0

    goto :goto_3d6

    .line 1908
    :cond_3d5
    move-object v6, v0

    .line 1912
    .end local v0  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_3d6
    :try_start_3d6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v5, v0

    .line 1915
    .local v5, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 1916
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 1917
    iget-wide v0, v11, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v0, v0

    iput-wide v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 1918
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_3ee
    .catchall {:try_start_3d6 .. :try_end_3ee} :catchall_58a

    if-eqz v0, :cond_3fd

    .line 1919
    :try_start_3f0
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 1920
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_3fc
    .catchall {:try_start_3f0 .. :try_end_3fc} :catchall_387

    goto :goto_402

    .line 1922
    :cond_3fd
    :try_start_3fd
    iput v12, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 1923
    const/4 v1, 0x0

    iput-boolean v1, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 1926
    :goto_402
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V
    :try_end_407
    .catchall {:try_start_3fd .. :try_end_407} :catchall_58a

    move-object v12, v0

    .line 1927
    .local v12, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    move-object/from16 v4, v40

    .end local v40  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v4, "callerApp":Lcom/android/server/am/ProcessRecord;
    :try_start_40a
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v12, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 1928
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v12, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_412
    .catchall {:try_start_40a .. :try_end_412} :catchall_584

    .line 1930
    :try_start_412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_41d

    .line 1931
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v5, v12}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_41d
    .catch Landroid/os/RemoteException; {:try_start_412 .. :try_end_41d} :catch_425
    .catchall {:try_start_412 .. :try_end_41d} :catchall_41e

    .line 1936
    :cond_41d
    goto :goto_42e

    .line 1991
    .end local v5  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v6  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "binder":Landroid/os/IBinder;
    .end local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :catchall_41e
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v1, v22

    goto/16 :goto_5b7

    .line 1933
    .restart local v5  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v6  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v8  # "binder":Landroid/os/IBinder;
    .restart local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :catch_425
    move-exception v0

    .line 1934
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_426
    const-string v1, "Failed to send bind details to servicetracker HAL"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1935
    const/4 v1, 0x0

    iput-object v1, v14, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_42e
    .catchall {:try_start_426 .. :try_end_42e} :catchall_584

    .line 1938
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_42e
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_45e

    .line 1939
    :try_start_432
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1940
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getFlags()I

    move-result v3
    :try_end_43c
    .catchall {:try_start_432 .. :try_end_43c} :catchall_457

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v20, v4

    .end local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v20, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v4, v22

    move-object/from16 v21, v5

    .end local v5  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .local v21, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    move v5, v0

    move-object/from16 v27, v6

    .end local v6  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v27, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move/from16 v6, v23

    :try_start_44b
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_44f
    .catchall {:try_start_44b .. :try_end_44f} :catchall_4a8

    if-eqz v0, :cond_464

    .line 1942
    nop

    .line 1991
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    const/4 v1, 0x0

    return v1

    .line 1991
    .end local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "binder":Landroid/os/IBinder;
    .end local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v27  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_457
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v1, v22

    .end local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_5b7

    .line 1938
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v5  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v6  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v8  # "binder":Landroid/os/IBinder;
    .restart local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :cond_45e
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    .line 1946
    .end local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v5  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v6  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v21  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v27  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_464
    :try_start_464
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_466
    .catchall {:try_start_464 .. :try_end_466} :catchall_580

    if-eqz v0, :cond_4ad

    .line 1947
    and-int v0, p6, v19

    if-eqz v0, :cond_471

    .line 1948
    :try_start_46c
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1950
    :cond_471
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_47a

    .line 1951
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1954
    :cond_47a
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1955
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_48c

    iget-object v2, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-nez v2, :cond_497

    .line 1956
    :cond_48c
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_499

    and-int v2, p6, v19

    if-eqz v2, :cond_499

    :cond_497
    const/4 v2, 0x1

    goto :goto_49a

    :cond_499
    const/4 v2, 0x0

    :goto_49a
    iget-object v3, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1954
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1959
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_bindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_4a7
    .catchall {:try_start_46c .. :try_end_4a7} :catchall_4a8

    goto :goto_4ad

    .line 1991
    .end local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "binder":Landroid/os/IBinder;
    .end local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v27  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_4a8
    move-exception v0

    move/from16 v1, v22

    goto/16 :goto_5b7

    .line 1962
    .restart local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v8  # "binder":Landroid/os/IBinder;
    .restart local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v21  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v27  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_4ad
    :goto_4ad
    :try_start_4ad
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_4af
    .catchall {:try_start_4ad .. :try_end_4af} :catchall_580

    if-eqz v0, :cond_4f5

    :try_start_4b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v1, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v1, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 1964
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doRebind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v1, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1962
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f5
    .catchall {:try_start_4b1 .. :try_end_4f5} :catchall_4a8

    .line 1967
    :cond_4f5
    :try_start_4f5
    iget-object v0, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_561

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_4fd
    .catchall {:try_start_4f5 .. :try_end_4fd} :catchall_580

    if-eqz v0, :cond_561

    .line 1971
    :try_start_4ff
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v1, v11, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v2, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v2, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_50b
    .catch Ljava/lang/Exception; {:try_start_4ff .. :try_end_50b} :catch_50c
    .catchall {:try_start_4ff .. :try_end_50b} :catchall_4a8

    .line 1976
    goto :goto_544

    .line 1972
    :catch_50c
    move-exception v0

    .line 1973
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 1974
    invoke-interface {v2}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_544
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55e

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v0, :cond_55e

    .line 1982
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;
    :try_end_557
    .catchall {:try_start_50d .. :try_end_557} :catchall_580

    move/from16 v1, v22

    const/4 v2, 0x1

    .end local v22  # "callerFg":Z
    .local v1, "callerFg":Z
    :try_start_55a
    invoke-direct {v14, v11, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_56f

    .line 1981
    .end local v1  # "callerFg":Z
    .restart local v22  # "callerFg":Z
    :cond_55e
    move/from16 v1, v22

    .end local v22  # "callerFg":Z
    .restart local v1  # "callerFg":Z
    goto :goto_56f

    .line 1967
    .end local v1  # "callerFg":Z
    .restart local v22  # "callerFg":Z
    :cond_561
    move/from16 v1, v22

    .line 1984
    .end local v22  # "callerFg":Z
    .restart local v1  # "callerFg":Z
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_56f

    .line 1985
    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v2, 0x0

    invoke-direct {v14, v11, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 1988
    :cond_56f
    :goto_56f
    iget v0, v11, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v14, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_578
    .catchall {:try_start_55a .. :try_end_578} :catchall_57e

    .line 1991
    .end local v7  # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "binder":Landroid/os/IBinder;
    .end local v10  # "b":Lcom/android/server/am/AppBindRecord;
    .end local v12  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v27  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    nop

    .line 1994
    const/4 v2, 0x1

    return v2

    .line 1991
    :catchall_57e
    move-exception v0

    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .restart local v22  # "callerFg":Z
    :catchall_580
    move-exception v0

    move/from16 v1, v22

    .end local v22  # "callerFg":Z
    .restart local v1  # "callerFg":Z
    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v22  # "callerFg":Z
    :catchall_584
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v1, v22

    .end local v4  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v22  # "callerFg":Z
    .restart local v1  # "callerFg":Z
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v22  # "callerFg":Z
    .restart local v40  # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_58a
    move-exception v0

    move/from16 v1, v22

    move-object/from16 v20, v40

    .end local v22  # "callerFg":Z
    .end local v40  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v1  # "callerFg":Z
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .end local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v22  # "callerFg":Z
    .local v27, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v40  # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_590
    move-exception v0

    move/from16 v1, v22

    move-object/from16 v9, v27

    move-object/from16 v20, v40

    .end local v22  # "callerFg":Z
    .end local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v40  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v1  # "callerFg":Z
    .restart local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .end local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "service":Landroid/content/Intent;
    .end local v31  # "isBindExternal":Z
    .end local p3  # "allowInstant":Z
    .local v6, "service":Landroid/content/Intent;
    .local v7, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v8, "s":Lcom/android/server/am/ServiceRecord;
    .local v11, "isBindExternal":Z
    .local v12, "allowInstant":Z
    .restart local v22  # "callerFg":Z
    .restart local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_598
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move/from16 v31, v11

    move/from16 p3, v12

    move/from16 v1, v22

    move-object/from16 v9, v27

    move-object v11, v8

    .end local v6  # "service":Landroid/content/Intent;
    .end local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12  # "allowInstant":Z
    .end local v22  # "callerFg":Z
    .end local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1  # "callerFg":Z
    .restart local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v11, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "service":Landroid/content/Intent;
    .restart local v31  # "isBindExternal":Z
    .restart local p3  # "allowInstant":Z
    goto :goto_5b7

    .end local v1  # "callerFg":Z
    .end local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "service":Landroid/content/Intent;
    .end local v26  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v31  # "isBindExternal":Z
    .end local p3  # "allowInstant":Z
    .restart local v6  # "service":Landroid/content/Intent;
    .restart local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8  # "s":Lcom/android/server/am/ServiceRecord;
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v11, "isBindExternal":Z
    .restart local v12  # "allowInstant":Z
    .restart local v22  # "callerFg":Z
    .restart local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_5a7
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v10

    move/from16 v31, v11

    move/from16 p3, v12

    move/from16 v1, v22

    move-object/from16 v9, v27

    move-object v11, v8

    .end local v6  # "service":Landroid/content/Intent;
    .end local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v10  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v12  # "allowInstant":Z
    .end local v22  # "callerFg":Z
    .end local v27  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1  # "callerFg":Z
    .restart local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v11, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "service":Landroid/content/Intent;
    .restart local v26  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v31  # "isBindExternal":Z
    .restart local p3  # "allowInstant":Z
    :goto_5b7
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1679
    .end local v1  # "callerFg":Z
    .end local v9  # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v11  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16  # "isCallerSystem":Z
    .end local v17  # "clientIntent":Landroid/app/PendingIntent;
    .end local v18  # "clientLabel":I
    .end local v20  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v23  # "permissionsReviewRequired":Z
    .end local v25  # "service":Landroid/content/Intent;
    .end local v26  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v28  # "origId":J
    .end local v31  # "isBindExternal":Z
    .restart local v7  # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p3, "service":Landroid/content/Intent;
    :cond_5bb
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when binding service "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZ)Z
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "evenPersistent"  # Z
    .param p5, "doit"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZ)Z"
        }
    .end annotation

    .line 3963
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3965
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 3966
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3969
    :cond_8
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_43

    .line 3970
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_42

    .line 3971
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 3972
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 3971
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3973
    if-nez p5, :cond_2e

    if-eqz v0, :cond_2e

    .line 3974
    return v1

    .line 3976
    :cond_2e
    if-eqz p5, :cond_3f

    if-nez p2, :cond_3f

    .line 3977
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v3, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3970
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .end local v2  # "i":I
    :cond_42
    goto :goto_60

    .line 3981
    :cond_43
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3982
    .local v2, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v2, :cond_59

    .line 3983
    iget-object v9, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 3984
    .local v9, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v0

    .line 3987
    .end local v9  # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_59
    if-eqz p5, :cond_60

    if-nez p2, :cond_60

    .line 3988
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3992
    .end local v2  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_7e

    .line 3993
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_69
    if-ltz v2, :cond_79

    .line 3994
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3993
    add-int/lit8 v2, v2, -0x1

    goto :goto_69

    .line 3996
    .end local v2  # "i":I
    :cond_79
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3999
    :cond_7e
    return v0
.end method

.method cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 19
    .param p1, "userId"  # I
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "baseIntent"  # Landroid/content/Intent;

    .line 4019
    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4020
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4021
    .local v3, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_2b

    .line 4022
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4023
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4024
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4021
    .end local v5  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4029
    .end local v0  # "i":I
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v5, v0

    .local v5, "i":I
    :goto_31
    if-ltz v5, :cond_8e

    .line 4030
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 4031
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_8b

    .line 4032
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_66

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping service "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": remove task"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ActivityManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    invoke-direct {p0, v13}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_8b

    .line 4036
    :cond_66
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v8, 0x1

    .line 4037
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 4036
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8b

    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_8b

    .line 4042
    const/4 v0, 0x0

    :try_start_86
    invoke-direct {p0, v13, v4, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_89
    .catch Landroid/os/TransactionTooLargeException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 4045
    goto :goto_8b

    .line 4043
    :catch_8a
    move-exception v0

    .line 4029
    .end local v13  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_8b
    :goto_8b
    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    .line 4050
    .end local v5  # "i":I
    :cond_8e
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 22
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "opti"  # I
    .param p6, "dumpAll"  # Z

    .line 4962
    move-object v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 4964
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v10

    .line 4966
    .local v10, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4967
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4969
    .local v0, "users":[I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_49

    aget v5, v0, v4

    .line 4970
    .local v5, "user":I
    iget-object v6, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4971
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v6, :cond_2b

    .line 4972
    goto :goto_46

    .line 4974
    :cond_2b
    iget-object v7, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4975
    .local v7, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v11, v3

    .local v11, "i":I
    :goto_2e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_46

    .line 4976
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4978
    .local v12, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-interface {v10, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 4979
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4975
    .end local v12  # "r1":Lcom/android/server/am/ServiceRecord;
    :cond_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 4969
    .end local v5  # "user":I
    .end local v6  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7  # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11  # "i":I
    :cond_46
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 4983
    .end local v0  # "users":[I
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4985
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_54

    .line 4986
    return v3

    .line 4990
    :cond_54
    sget-object v0, Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;->INSTANCE:Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4992
    const/4 v0, 0x0

    .line 4993
    .local v0, "needSep":Z
    const/4 v1, 0x0

    move v14, v1

    move v1, v0

    move v0, v14

    .local v0, "i":I
    .local v1, "needSep":Z
    :goto_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_87

    .line 4994
    if-eqz v1, :cond_6d

    .line 4995
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4997
    :cond_6d
    const/4 v11, 0x1

    .line 4998
    .end local v1  # "needSep":Z
    .local v11, "needSep":Z
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    const-string v2, ""

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 4993
    add-int/lit8 v0, v0, 0x1

    move v1, v11

    goto :goto_62

    .line 5000
    .end local v0  # "i":I
    .end local v11  # "needSep":Z
    .restart local v1  # "needSep":Z
    :cond_87
    const/4 v0, 0x1

    return v0

    .line 4983
    .end local v1  # "needSep":Z
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method forceStopPackageLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4003
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4004
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_3f

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 4005
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 4006
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4007
    .local v3, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 4008
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4009
    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 4005
    .end local v3  # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 4012
    .end local v1  # "i":I
    :cond_36
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v1, :cond_3f

    .line 4013
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 4016
    :cond_3f
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .registers 14
    .param p1, "aa"  # Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    .param p2, "nowElapsed"  # J

    .line 1043
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shown enough: pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_26
    const/4 v0, 0x0

    .line 1046
    .local v0, "canRemove":Z
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1047
    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v2, :cond_3e

    .line 1050
    const/4 v0, 0x1

    .line 1051
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_d9

    const-string v2, "YES - shown while on top"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 1052
    :cond_3e
    iget-boolean v2, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    const-string v3, "NO -- wait "

    if-nez v2, :cond_83

    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v2, :cond_49

    goto :goto_83

    .line 1070
    :cond_49
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v4, v6

    .line 1072
    .local v4, "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_62

    .line 1077
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_5f

    const-string v2, "YES - gone long enough with screen off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_5f
    const/4 v0, 0x1

    goto/16 :goto_d9

    .line 1081
    :cond_62
    iput-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1082
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_d9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v6, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with screen off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 1053
    .end local v4  # "minTime":J
    :cond_83
    :goto_83
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1054
    iget-wide v6, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_94

    .line 1055
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_9a

    .line 1056
    :cond_94
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_9a
    add-long/2addr v4, v6

    .line 1057
    .restart local v4  # "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_aa

    .line 1060
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_a8

    const-string v2, "YES - shown long enough with screen on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_a8
    const/4 v0, 0x1

    goto :goto_d8

    .line 1064
    :cond_aa
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v6, p2

    .line 1065
    .local v6, "reportTime":J
    cmp-long v2, v6, v4

    if-lez v2, :cond_b7

    move-wide v8, v6

    goto :goto_b8

    :cond_b7
    move-wide v8, v4

    :goto_b8
    iput-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1066
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_d8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v8, p2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with screen on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v4  # "minTime":J
    .end local v6  # "reportTime":J
    :cond_d8
    :goto_d8
    nop

    .line 1086
    :cond_d9
    :goto_d9
    return v0
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .registers 9
    .param p1, "uidRec"  # Lcom/android/server/am/UidRecord;

    .line 1320
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1321
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_4c

    .line 1322
    const/4 v1, 0x0

    .line 1323
    .local v1, "changed":Z
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_19
    if-ltz v2, :cond_45

    .line 1324
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1325
    .local v4, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v6, p1, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v5, v6, :cond_42

    .line 1326
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3a

    .line 1327
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v5, :cond_37

    .line 1328
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1329
    const/4 v1, 0x1

    .line 1331
    :cond_37
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_42

    .line 1332
    :cond_3a
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v5, :cond_42

    .line 1333
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1334
    const/4 v1, 0x1

    .line 1323
    .end local v4  # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1338
    .end local v2  # "j":I
    :cond_45
    if-eqz v1, :cond_4c

    .line 1339
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1342
    .end local v1  # "changed":Z
    :cond_4c
    return-void
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .registers 9
    .param p1, "className"  # Landroid/content/ComponentName;
    .param p2, "token"  # Landroid/os/IBinder;

    .line 1028
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1029
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1030
    .local v1, "origId":J
    const/4 v3, 0x0

    .line 1032
    .local v3, "ret":I
    :try_start_9
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 1033
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_12

    .line 1034
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_17

    move v3, v5

    .line 1037
    .end local v4  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    nop

    .line 1039
    return v3

    .line 1037
    :catchall_17
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 9
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 4361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4362
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 4363
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_40

    .line 4364
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4365
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "conni":I
    :goto_18
    if-ltz v3, :cond_40

    .line 4366
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4367
    .local v4, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 4368
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3a

    .line 4369
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object v6

    .line 4367
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 4365
    .end local v4  # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5  # "i":I
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 4374
    .end local v2  # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v3  # "conni":I
    :cond_40
    const/4 v2, 0x0

    return-object v2
.end method

.method getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .registers 16
    .param p1, "maxNum"  # I
    .param p2, "flags"  # I
    .param p3, "callingUid"  # I
    .param p4, "allowed"  # Z
    .param p5, "canInteractAcrossUsers"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 4309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4312
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4314
    .local v1, "ident":J
    const/4 v3, 0x0

    if-eqz p5, :cond_6d

    .line 4315
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v4

    .line 4316
    .local v4, "users":[I
    move v5, v3

    .local v5, "ui":I
    :goto_15
    array-length v6, v4

    if-ge v5, v6, :cond_45

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_45

    .line 4317
    aget v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 4318
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v7, v3

    .local v7, "i":I
    :goto_25
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_42

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, p1, :cond_42

    .line 4319
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 4320
    .local v8, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4318
    nop

    .end local v8  # "sr":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 4316
    .end local v6  # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v7  # "i":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 4324
    .end local v5  # "ui":I
    :cond_45
    nop

    .local v3, "i":I
    :goto_46
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_6c

    .line 4325
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4326
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 4327
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    .line 4328
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4329
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4324
    nop

    .end local v5  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6  # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 4331
    .end local v3  # "i":I
    .end local v4  # "users":[I
    :cond_6c
    goto :goto_d4

    .line 4332
    :cond_6d
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4333
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4334
    .local v5, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v6, v3

    .local v6, "i":I
    :goto_76
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_9e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p1, :cond_9e

    .line 4335
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4337
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez p4, :cond_94

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_9b

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v8, p3, :cond_9b

    .line 4338
    :cond_94
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4334
    .end local v7  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 4342
    .end local v6  # "i":I
    :cond_9e
    nop

    .restart local v3  # "i":I
    :goto_9f
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_d4

    .line 4343
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4344
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v7, v4, :cond_d1

    if-nez p4, :cond_c5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_d1

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_d1

    .line 4346
    :cond_c5
    nop

    .line 4347
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    .line 4348
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v8, v7, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4349
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catchall {:try_start_c .. :try_end_d1} :catchall_d9

    .line 4342
    .end local v6  # "r":Lcom/android/server/am/ServiceRecord;
    .end local v7  # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 4354
    .end local v3  # "i":I
    .end local v4  # "userId":I
    .end local v5  # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_d4
    :goto_d4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4355
    nop

    .line 4357
    return-object v0

    .line 4354
    :catchall_d9
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "callingUser"  # I

    .line 433
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_22

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceByNameLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), callingUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_MU"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_22
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServicesLocked(I)Landroid/util/ArrayMap;
    .registers 3
    .param p1, "callingUser"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServicesLocked(I)Z
    .registers 6
    .param p1, "callingUser"  # I

    .line 439
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 440
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V
    .registers 13
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "appUid"  # I
    .param p3, "appPid"  # I
    .param p4, "localPackageName"  # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 923
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string v6, "Bad notification for startForeground"

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 925
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 926
    return-void

    .line 925
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 19
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"  # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4083
    const/4 v3, 0x0

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4084
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v4}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->killProcess(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    .line 4089
    :cond_12
    goto :goto_1d

    .line 4086
    :catch_13
    move-exception v0

    .line 4087
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send kill process details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4088
    iput-object v3, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 4093
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->hook_ifAllowServiceRestartAfterKill(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v4

    .line 4097
    .end local p2  # "allowRestart":Z
    .local v4, "allowRestart":Z
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .local v0, "i":I
    :goto_29
    if-ltz v0, :cond_39

    .line 4098
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 4099
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 4097
    .end local v6  # "r":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 4101
    .end local v0  # "i":I
    :cond_39
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4102
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4104
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 4107
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "i":I
    :goto_4b
    if-ltz v6, :cond_140

    .line 4108
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4109
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v8

    monitor-enter v8

    .line 4110
    :try_start_5c
    iget-object v9, v7, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 4111
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_13d

    .line 4112
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v8, v2, :cond_7e

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_7e

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_7e

    .line 4113
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4114
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4116
    :cond_7e
    invoke-virtual {v7, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4117
    iput-object v3, v7, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4118
    iput v0, v7, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4119
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4120
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 4121
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v8, :cond_ab

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "killServices remove destroying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    :cond_ab
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 4125
    .local v8, "numClients":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "bindingi":I
    :goto_b3
    if-ltz v9, :cond_137

    .line 4126
    iget-object v10, v7, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    .line 4127
    .local v10, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v11, :cond_e1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Killing binding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": shouldUnbind="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ActivityManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    :cond_e1
    iput-object v3, v10, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 4130
    iput-boolean v0, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v0, v10, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v0, v10, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4135
    iget-object v11, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v5

    .local v11, "appi":I
    :goto_f0
    if-ltz v11, :cond_131

    .line 4136
    iget-object v12, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 4138
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v13, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v13, :cond_12c

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v13, :cond_103

    .line 4139
    goto :goto_12c

    .line 4144
    :cond_103
    iget-object v13, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBindRecord;

    .line 4145
    .local v13, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v14, 0x0

    .line 4146
    .local v14, "hasCreate":Z
    iget-object v15, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    sub-int/2addr v15, v5

    .local v15, "conni":I
    :goto_113
    if-ltz v15, :cond_12a

    .line 4147
    iget-object v3, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 4148
    .local v3, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x31

    if-ne v0, v5, :cond_125

    .line 4150
    const/4 v14, 0x1

    .line 4151
    goto :goto_12a

    .line 4146
    .end local v3  # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_125
    add-int/lit8 v15, v15, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_113

    .line 4154
    .end local v15  # "conni":I
    :cond_12a
    :goto_12a
    if-nez v14, :cond_12c

    .line 4135
    .end local v12  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13  # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v14  # "hasCreate":Z
    :cond_12c
    :goto_12c
    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_f0

    .line 4125
    .end local v10  # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v11  # "appi":I
    :cond_131
    add-int/lit8 v9, v9, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_b3

    .line 4107
    .end local v7  # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v8  # "numClients":I
    .end local v9  # "bindingi":I
    :cond_137
    add-int/lit8 v6, v6, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4b

    .line 4111
    .restart local v7  # "sr":Lcom/android/server/am/ServiceRecord;
    :catchall_13d
    move-exception v0

    :try_start_13e
    monitor-exit v8
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    throw v0

    .line 4168
    .end local v6  # "i":I
    .end local v7  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_140
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 4171
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_14d
    if-ltz v3, :cond_25f

    .line 4172
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4176
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_165

    .line 4177
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 4178
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4183
    :cond_165
    iget-object v7, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4184
    .local v7, "curRec":Lcom/android/server/am/ServiceRecord;
    if-eq v7, v6, :cond_19f

    .line 4185
    if-eqz v7, :cond_19c

    .line 4186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not same as in map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_25b

    .line 4185
    :cond_19c
    const/4 v13, 0x0

    goto/16 :goto_25b

    .line 4194
    :cond_19f
    if-eqz v4, :cond_204

    iget v8, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v8, v8

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_204

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_204

    .line 4197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service crashed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " times, stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    const/16 v8, 0x7552

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4200
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x2

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4199
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4201
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v13, 0x0

    goto :goto_25b

    .line 4202
    :cond_204
    if-eqz v4, :cond_257

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4203
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_215

    const/4 v13, 0x0

    goto :goto_258

    .line 4206
    :cond_215
    invoke-direct {v1, v6, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 4211
    .local v8, "canceled":Z
    iget-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v9, :cond_255

    iget-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v9, :cond_226

    if-eqz v8, :cond_224

    goto :goto_226

    :cond_224
    const/4 v13, 0x0

    goto :goto_25b

    .line 4212
    :cond_226
    :goto_226
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_253

    .line 4213
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 4214
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v9, :cond_248

    .line 4215
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    .line 4216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4215
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_249

    .line 4214
    :cond_248
    const/4 v13, 0x0

    .line 4218
    :goto_249
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v9

    if-nez v9, :cond_25b

    .line 4220
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_25b

    .line 4212
    :cond_253
    const/4 v13, 0x0

    goto :goto_25b

    .line 4211
    :cond_255
    const/4 v13, 0x0

    goto :goto_25b

    .line 4202
    .end local v8  # "canceled":Z
    :cond_257
    const/4 v13, 0x0

    .line 4204
    :goto_258
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4171
    .end local v6  # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7  # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_25b
    :goto_25b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_14d

    .line 4227
    .end local v3  # "i":I
    :cond_25f
    if-nez v4, :cond_2ca

    .line 4228
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 4229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 4232
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .restart local v3  # "i":I
    :goto_270
    if-ltz v3, :cond_29b

    .line 4233
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4234
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_298

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_298

    .line 4236
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4237
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4232
    .end local v6  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_298
    add-int/lit8 v3, v3, -0x1

    goto :goto_270

    .line 4240
    .end local v3  # "i":I
    :cond_29b
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .restart local v3  # "i":I
    :goto_2a2
    if-ltz v3, :cond_2ca

    .line 4241
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4242
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c7

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_2c7

    .line 4244
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4240
    .end local v5  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2c7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a2

    .line 4250
    .end local v3  # "i":I
    :cond_2ca
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4251
    .restart local v3  # "i":I
    :goto_2d0
    if-lez v3, :cond_304

    .line 4252
    add-int/lit8 v3, v3, -0x1

    .line 4253
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4254
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v2, :cond_303

    .line 4255
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4256
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4257
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_303

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "killServices remove destroying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    .end local v5  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_303
    goto :goto_2d0

    .line 4261
    :cond_304
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 4262
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 9
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 4265
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 4267
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 4268
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_13

    .line 4269
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 4271
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 4272
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 4273
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 4274
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 4275
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 4276
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 4277
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 4278
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 4279
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_45

    .line 4280
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4282
    :cond_45
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_4f

    .line 4283
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4285
    :cond_4f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_61

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_61

    .line 4286
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4288
    :cond_61
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_73

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 4289
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4292
    :cond_73
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4293
    .local v1, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "conni":I
    :goto_7d
    if-ltz v2, :cond_ab

    .line 4294
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4295
    .local v3, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_86
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a8

    .line 4296
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4297
    .local v5, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v6, :cond_a5

    .line 4298
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 4299
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 4300
    return-object v0

    .line 4295
    .end local v5  # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 4293
    .end local v3  # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4  # "i":I
    :cond_a8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7d

    .line 4304
    .end local v2  # "conni":I
    :cond_ab
    return-object v0
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;

    .line 4927
    new-instance v8, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v8
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 17
    .param p1, "service"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 929
    nop

    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 931
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 929
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "peek"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    .line 937
    .local v0, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v1, 0x0

    .line 938
    .local v1, "ret":Landroid/os/IBinder;
    if-eqz v0, :cond_69

    .line 940
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_38

    .line 947
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 948
    .local v2, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v2, :cond_69

    .line 949
    iget-object v1, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_69

    .line 941
    .end local v2  # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_38
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    :cond_69
    :goto_69
    return-object v1
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 13
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 2836
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2837
    return-void

    .line 2839
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-nez v1, :cond_27

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting service that is not needed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    return-void

    .line 2849
    :cond_27
    :try_start_27
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_9e

    .line 2850
    const/4 v1, 0x0

    .line 2851
    .local v1, "shouldDelay":Z
    const/4 v3, 0x0

    .line 2852
    .local v3, "top_rc":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2853
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_3e

    .line 2854
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    move-object v3, v5

    .line 2857
    :cond_3e
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_4a

    move v0, v6

    .line 2859
    .local v0, "isPersistent":Z
    :cond_4a
    if-eqz v3, :cond_5d

    .line 2860
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->launching:Z

    if-eqz v5, :cond_5d

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    if-nez v0, :cond_5d

    .line 2862
    const/4 v1, 0x1

    .line 2865
    :cond_5d
    if-nez v1, :cond_73

    .line 2866
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v7

    iget-boolean v8, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    goto :goto_9d

    .line 2868
    :cond_73
    sget-boolean v5, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v5, :cond_97

    .line 2869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reschedule service restart due to app launch r.shortInstanceName "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " r.app = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 2873
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 2875
    .end local v0  # "isPersistent":Z
    .end local v1  # "shouldDelay":Z
    .end local v3  # "top_rc":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_9d
    goto :goto_b1

    .line 2876
    :cond_9e
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_b1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_27 .. :try_end_b1} :catch_b2

    .line 2880
    :goto_b1
    goto :goto_b3

    .line 2878
    :catch_b2
    move-exception v0

    .line 2881
    :goto_b3
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 3913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 3914
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3915
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_23

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3916
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_23
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_4a

    .line 3918
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing bringing down service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3920
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3921
    add-int/lit8 v0, v0, -0x1

    .line 3922
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3913
    .end local v1  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3925
    .end local v0  # "i":I
    :cond_4d
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 20
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "service"  # Landroid/os/IBinder;

    .line 1998
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2000
    .local v5, "origId":J
    :try_start_c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_147

    const-string v7, "ActivityManager"

    if-eqz v0, :cond_36

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PUBLISHING "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_36
    if-eqz v2, :cond_142

    .line 2003
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v8, v0

    .line 2005
    .local v8, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    move-object v9, v0

    .line 2006
    .local v9, "b":Lcom/android/server/am/IntentBindRecord;
    const/4 v10, 0x0

    if-eqz v9, :cond_138

    iget-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_138

    .line 2007
    iput-object v4, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2009
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 2010
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 2011
    .local v11, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v0

    .local v12, "conni":I
    :goto_5e
    if-ltz v12, :cond_138

    .line 2012
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 2013
    .local v13, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move v0, v10

    move v14, v0

    .local v14, "i":I
    :goto_69
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_131

    .line 2014
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v15, v0

    .line 2015
    .local v15, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 2016
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_9a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not publishing to: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_9a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_b8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bound intent: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v10, v10, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_b8
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_12a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Published intent: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 2024
    :cond_d1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_e9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Publishing to: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_12 .. :try_end_e9} :catchall_147

    .line 2026
    :cond_e9
    :try_start_e9
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-interface {v0, v10, v4, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f1} :catch_f2
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_147

    .line 2031
    goto :goto_12a

    .line 2027
    :catch_f2
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure sending service "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to connection "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2029
    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " (in "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2028
    invoke-static {v7, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2013
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v15  # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_12a
    :goto_12a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    const/4 v10, 0x0

    goto/16 :goto_69

    .line 2011
    .end local v13  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v14  # "i":I
    :cond_131
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v3, p2

    const/4 v10, 0x0

    goto/16 :goto_5e

    .line 2036
    .end local v11  # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v12  # "conni":I
    :cond_138
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_142
    .catchall {:try_start_f3 .. :try_end_142} :catchall_147

    .line 2039
    .end local v8  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v9  # "b":Lcom/android/server/am/IntentBindRecord;
    :cond_142
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    nop

    .line 2041
    return-void

    .line 2039
    :catchall_147
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .registers 22
    .param p1, "c"  # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"  # Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3613
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3614
    .local v3, "binder":Landroid/os/IBinder;
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 3615
    .local v4, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 3616
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3617
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v0, :cond_26

    .line 3618
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3619
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_26

    .line 3620
    invoke-virtual {v5, v3}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 3623
    :cond_26
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3624
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3625
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_3e

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-object/from16 v7, p3

    if-eq v6, v7, :cond_40

    .line 3626
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    goto :goto_40

    .line 3625
    :cond_3e
    move-object/from16 v7, p3

    .line 3628
    :cond_40
    :goto_40
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    move-object/from16 v9, p2

    if-eq v6, v9, :cond_83

    .line 3629
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3630
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_59

    .line 3631
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 3635
    :cond_59
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x1000000

    and-int/2addr v6, v10

    if-eqz v6, :cond_70

    .line 3636
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    .line 3637
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-nez v6, :cond_70

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_70

    .line 3638
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3642
    :cond_70
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x100000

    and-int/2addr v6, v10

    if-eqz v6, :cond_7a

    .line 3643
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateHasBindingWhitelistingBgActivityStarts()V

    .line 3645
    :cond_7a
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_83

    .line 3646
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6, v2, v8}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3649
    :cond_83
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3650
    .end local v0  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v6, :cond_9b

    .line 3651
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3652
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9b

    .line 3653
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    :cond_9b
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 3660
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_c9

    .line 3661
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    :cond_c9
    iget-boolean v0, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_199

    .line 3665
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v8, "ActivityManager"

    if-eqz v0, :cond_f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disconnecting binding "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": shouldUnbind="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v10, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :cond_f5
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_16f

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_16f

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_16f

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_16f

    .line 3670
    :try_start_110
    const-string/jumbo v0, "unbind"

    invoke-direct {v1, v5, v10, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3671
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v11, :cond_132

    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_132

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v11, 0xe

    if-gt v0, v11, :cond_132

    .line 3676
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3678
    :cond_132
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v12, "updateOomAdj_unbindService"

    const/4 v13, 0x1

    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3680
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3683
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 3684
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_154} :catch_155

    .line 3688
    goto :goto_16f

    .line 3685
    :catch_155
    move-exception v0

    .line 3686
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3687
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3692
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_16f
    :goto_16f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3694
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-eqz v0, :cond_199

    .line 3695
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    .line 3696
    .local v0, "hasAutoCreate":Z
    if-nez v0, :cond_195

    .line 3697
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_195

    .line 3698
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    .line 3699
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3698
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3702
    :cond_195
    const/4 v8, 0x1

    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3705
    .end local v0  # "hasAutoCreate":Z
    :cond_199
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 4495
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_11

    goto :goto_2a

    .line 4498
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4500
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4501
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4502
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4503
    return-void

    .line 4496
    .end local v0  # "msg":Landroid/os/Message;
    :cond_2a
    :goto_2a
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 4484
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 4487
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4489
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4490
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 4491
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_24

    const-wide/16 v2, 0x4e20

    goto :goto_27

    :cond_24
    const-wide/32 v2, 0x30d40

    .line 4490
    :goto_27
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4492
    return-void

    .line 4485
    .end local v0  # "msg":Landroid/os/Message;
    :cond_2b
    :goto_2b
    return-void
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"  # I
    .param p3, "startId"  # I
    .param p4, "res"  # I

    .line 3708
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3709
    .local v0, "inDestroying":Z
    const-string v1, "ActivityManager"

    if-eqz p1, :cond_b6

    .line 3710
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_60

    .line 3713
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 3714
    const/4 v1, 0x0

    if-eqz p4, :cond_55

    if-eq p4, v3, :cond_55

    if-eq p4, v2, :cond_49

    const/4 v2, 0x3

    if-eq p4, v2, :cond_39

    const/16 v2, 0x3e8

    if-ne p4, v2, :cond_22

    .line 3749
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3750
    goto :goto_5b

    .line 3753
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3737
    :cond_39
    invoke-virtual {p1, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 3738
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_5b

    .line 3739
    iput v1, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3740
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 3742
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5b

    .line 3725
    .end local v2  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_49
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3726
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v2

    if-ne v2, p3, :cond_5b

    .line 3729
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5b

    .line 3718
    :cond_55
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3720
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 3721
    nop

    .line 3756
    :cond_5b
    :goto_5b
    if-nez p4, :cond_ab

    .line 3757
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_ab

    .line 3759
    :cond_60
    if-ne p2, v2, :cond_ab

    .line 3763
    if-nez v0, :cond_87

    .line 3768
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_ab

    .line 3769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 3772
    :cond_87
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v2, v3, :cond_ab

    .line 3773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3779
    :cond_ab
    :goto_ab
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3780
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3781
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    .end local v1  # "origId":J
    goto :goto_ce

    .line 3783
    :cond_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done executing unknown service from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3784
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3783
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :goto_ce
    return-void
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "serviceRecord"  # Ljava/lang/CharSequence;

    .line 4478
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 4481
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 11
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 4436
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4437
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_5f

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_f

    goto :goto_5f

    .line 4441
    :cond_f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4442
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4444
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4447
    :cond_1e
    :try_start_1e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_38

    .line 4448
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service foreground-required timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    :cond_38
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4451
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4452
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4454
    if-eqz v1, :cond_5e

    .line 4455
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 4459
    :cond_5e
    return-void

    .line 4438
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4452
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 19
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 4378
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const/4 v2, 0x0

    .line 4379
    .local v2, "anrMessage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_153

    if-eqz v0, :cond_1b

    .line 4382
    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4427
    :catchall_16
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_157

    .line 4384
    :cond_1b
    :try_start_1b
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_148

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_2c

    move-object v15, v2

    move-object/from16 v16, v3

    goto/16 :goto_14b

    .line 4387
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4388
    .local v4, "now":J
    nop

    .line 4389
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_38

    const/16 v0, 0x4e20

    goto :goto_3b

    :cond_38
    const v0, 0x30d40

    :goto_3b
    int-to-long v6, v0

    sub-long v6, v4, v6

    .line 4390
    .local v6, "maxTime":J
    const/4 v0, 0x0

    .line 4391
    .local v0, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v10, 0x0

    .line 4392
    .local v10, "nextTime":J
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_49
    if-ltz v8, :cond_a7

    .line 4393
    iget-object v12, v9, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4396
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 4397
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Freeze: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " sr.executingStart "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_153

    move-object v15, v2

    move-object/from16 v16, v3

    .end local v2  # "anrMessage":Ljava/lang/String;
    .local v15, "anrMessage":Ljava/lang/String;
    :try_start_76
    iget-wide v2, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " now : "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    iput-wide v4, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    goto :goto_90

    .line 4396
    .end local v15  # "anrMessage":Ljava/lang/String;
    .restart local v2  # "anrMessage":Ljava/lang/String;
    :cond_8d
    move-object v15, v2

    move-object/from16 v16, v3

    .line 4401
    .end local v2  # "anrMessage":Ljava/lang/String;
    .restart local v15  # "anrMessage":Ljava/lang/String;
    :goto_90
    iget-wide v2, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_98

    .line 4402
    move-object v0, v12

    .line 4403
    goto :goto_aa

    .line 4405
    :cond_98
    iget-wide v2, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_a1

    .line 4406
    iget-wide v2, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-wide v10, v2

    .line 4392
    .end local v12  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a1
    add-int/lit8 v8, v8, -0x1

    move-object v2, v15

    move-object/from16 v3, v16

    goto :goto_49

    .end local v15  # "anrMessage":Ljava/lang/String;
    .restart local v2  # "anrMessage":Ljava/lang/String;
    :cond_a7
    move-object v15, v2

    move-object/from16 v16, v3

    .line 4409
    .end local v2  # "anrMessage":Ljava/lang/String;
    .end local v8  # "i":I
    .restart local v15  # "anrMessage":Ljava/lang/String;
    :goto_aa
    if-eqz v0, :cond_117

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 4410
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout executing service: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 4412
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v8, 0x0

    const/16 v12, 0x400

    invoke-direct {v3, v2, v8, v12}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 4413
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4414
    const-string v8, "    "

    invoke-virtual {v0, v3, v8}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4415
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 4416
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 4417
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4418
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v13, 0x6ddd00

    invoke-virtual {v8, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "executing service "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4420
    .end local v3  # "pw":Ljava/io/PrintWriter;
    .end local v15  # "anrMessage":Ljava/lang/String;
    .local v2, "anrMessage":Ljava/lang/String;
    move-object v15, v2

    goto :goto_136

    .line 4421
    .end local v2  # "anrMessage":Ljava/lang/String;
    .restart local v15  # "anrMessage":Ljava/lang/String;
    :cond_117
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4423
    .local v2, "msg":Landroid/os/Message;
    iput-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4424
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v8, v9, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v8, :cond_12f

    .line 4425
    const-wide/16 v12, 0x4e20

    add-long/2addr v12, v10

    goto :goto_133

    :cond_12f
    const-wide/32 v12, 0x30d40

    add-long/2addr v12, v10

    .line 4424
    :goto_133
    invoke-virtual {v3, v2, v12, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4427
    .end local v0  # "timeout":Lcom/android/server/am/ServiceRecord;
    .end local v2  # "msg":Landroid/os/Message;
    .end local v4  # "now":J
    .end local v6  # "maxTime":J
    .end local v10  # "nextTime":J
    :goto_136
    monitor-exit v16
    :try_end_137
    .catchall {:try_start_76 .. :try_end_137} :catchall_150

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4429
    if-eqz v15, :cond_147

    .line 4430
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v8, v15

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 4432
    :cond_147
    return-void

    .line 4384
    .end local v15  # "anrMessage":Ljava/lang/String;
    .local v2, "anrMessage":Ljava/lang/String;
    :cond_148
    move-object v15, v2

    move-object/from16 v16, v3

    .line 4385
    .end local v2  # "anrMessage":Ljava/lang/String;
    .restart local v15  # "anrMessage":Ljava/lang/String;
    :goto_14b
    :try_start_14b
    monitor-exit v16
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_150

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4427
    :catchall_150
    move-exception v0

    move-object v2, v15

    goto :goto_157

    .end local v15  # "anrMessage":Ljava/lang/String;
    .restart local v2  # "anrMessage":Ljava/lang/String;
    :catchall_153
    move-exception v0

    move-object v15, v2

    move-object/from16 v16, v3

    :goto_157
    :try_start_157
    monitor-exit v16
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_15c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_15c
    move-exception v0

    goto :goto_157
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .registers 20
    .param p1, "className"  # Landroid/content/ComponentName;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "id"  # I
    .param p4, "notification"  # Landroid/app/Notification;
    .param p5, "flags"  # I
    .param p6, "foregroundServiceType"  # I

    .line 1009
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1010
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1012
    .local v2, "origId":J
    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    :try_start_b
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1013
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v0, :cond_1e

    .line 1014
    move-object v4, p0

    move-object v5, v0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_23

    .line 1017
    .end local v0  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1018
    nop

    .line 1019
    return-void

    .line 1017
    :catchall_23
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .registers 18
    .param p1, "smap"  # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"  # Landroid/content/Intent;
    .param p3, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"  # Z
    .param p5, "addToStarting"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 770
    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v10

    .line 771
    .local v10, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v0, 0x1

    if-eqz v10, :cond_17

    .line 772
    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 774
    :cond_17
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 775
    const/16 v1, 0x63

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 776
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-static {v1, v2, v3, v4, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 777
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 778
    :try_start_36
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 779
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_db

    .line 780
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 782
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 785
    :cond_54
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_cd

    if-eqz p5, :cond_cd

    .line 786
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_63

    move v11, v0

    :cond_63
    move v0, v11

    .line 787
    .local v0, "first":Z
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 789
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_a3

    .line 790
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 791
    .local v2, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting background (first="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2  # "here":Ljava/lang/RuntimeException;
    goto :goto_c6

    .line 793
    :cond_a3
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_c6

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting background (first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 793
    :cond_c6
    :goto_c6
    nop

    .line 796
    :goto_c7
    if-eqz v0, :cond_d4

    .line 797
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_d4

    .line 799
    .end local v0  # "first":Z
    :cond_cd
    if-nez p4, :cond_d5

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_d4

    goto :goto_d5

    :cond_d4
    :goto_d4
    goto :goto_d8

    .line 800
    :cond_d5
    :goto_d5
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 803
    :goto_d8
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 779
    .end local v1  # "error":Ljava/lang/String;
    :catchall_db
    move-exception v0

    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;I)Landroid/content/ComponentName;
    .registers 19
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "service"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "fgRequired"  # Z
    .param p7, "callingPackage"  # Ljava/lang/String;
    .param p8, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 465
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;IZ)Landroid/content/ComponentName;
    .registers 39
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "service"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "fgRequired"  # Z
    .param p7, "callingPackage"  # Ljava/lang/String;
    .param p8, "userId"  # I
    .param p9, "allowBackgroundActivityStarts"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 473
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v12, p4

    move/from16 v11, p5

    move-object/from16 v10, p7

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_3e
    move-object/from16 v8, p3

    .line 477
    :goto_40
    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v14, :cond_7d

    .line 478
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 479
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_56

    .line 485
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_52

    move v1, v6

    goto :goto_53

    :cond_52
    move v1, v7

    :goto_53
    move v0, v1

    .line 486
    .local v0, "callerFg":Z
    move v5, v0

    goto :goto_7f

    .line 480
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_56
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v0  # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7d
    const/4 v0, 0x1

    move v5, v0

    .line 490
    .local v5, "callerFg":Z
    :goto_7f
    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 491
    const-string/jumbo v19, "start"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move/from16 v20, v5

    .end local v5  # "callerFg":Z
    .local v20, "callerFg":Z
    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, v16

    move-object/from16 v21, v9

    move/from16 v9, v20

    move/from16 v10, v17

    move/from16 v11, v18

    move v14, v12

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v8

    .line 497
    .local v8, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v9, 0x0

    if-nez v8, :cond_ae

    .line 498
    return-object v9

    .line 500
    :cond_ae
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_c4

    .line 501
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_bb

    .line 502
    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_be

    :cond_bb
    const-string/jumbo v1, "private to package"

    :goto_be
    const-string v2, "!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-object v0

    .line 505
    :cond_c4
    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 507
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to start service with non-existent user! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v21

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v9

    .line 515
    :cond_eb
    move-object/from16 v11, v21

    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    move v7, v0

    .line 520
    .local v7, "bgLaunch":Z
    const/4 v0, 0x0

    .line 521
    .local v0, "forcedStandby":Z
    if-eqz v7, :cond_13c

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v13, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 522
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_136

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing bg-only service start only for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : bgLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callerFg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v20

    .end local v20  # "callerFg":Z
    .local v6, "callerFg":Z
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_138

    .line 522
    .end local v6  # "callerFg":Z
    .restart local v20  # "callerFg":Z
    :cond_136
    move/from16 v6, v20

    .line 526
    .end local v20  # "callerFg":Z
    .restart local v6  # "callerFg":Z
    :goto_138
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_140

    .line 521
    .end local v6  # "callerFg":Z
    .restart local v20  # "callerFg":Z
    :cond_13c
    move/from16 v6, v20

    .line 530
    .end local v20  # "callerFg":Z
    .restart local v6  # "callerFg":Z
    move/from16 v16, v0

    .end local v0  # "forcedStandby":Z
    .local v16, "forcedStandby":Z
    :goto_140
    const/4 v0, 0x0

    .line 531
    .local v0, "forceSilentAbort":Z
    const-string v5, " pkg="

    const-string v4, " from pid="

    const-string v3, " to "

    const-string v2, " uid="

    if-eqz p6, :cond_1ac

    .line 532
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v9, 0x4c

    iget-object v12, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .end local v0  # "forceSilentAbort":Z
    .local v18, "forceSilentAbort":Z
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v12, v0}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 534
    .local v0, "mode":I
    if-eqz v0, :cond_16f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_174

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16f

    .line 550
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "!!"

    const-string v3, "foreground not allowed as per app op"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 534
    :cond_16f
    move/from16 v9, p5

    move-object/from16 v12, p7

    goto :goto_1ab

    .line 542
    :cond_174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    .line 547
    .end local p6  # "fgRequired":Z
    .local v1, "fgRequired":Z
    const/16 v18, 0x1

    .line 548
    goto :goto_1b4

    .line 538
    .end local v1  # "fgRequired":Z
    .restart local p6  # "fgRequired":Z
    :goto_1ab
    goto :goto_1b2

    .line 531
    .end local v18  # "forceSilentAbort":Z
    .local v0, "forceSilentAbort":Z
    :cond_1ac
    move/from16 v9, p5

    move-object/from16 v12, p7

    move/from16 v18, v0

    .line 556
    .end local v0  # "forceSilentAbort":Z
    .restart local v18  # "forceSilentAbort":Z
    :goto_1b2
    move/from16 v1, p6

    .end local p6  # "fgRequired":Z
    .restart local v1  # "fgRequired":Z
    :goto_1b4
    if-nez v16, :cond_1c7

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_1bd

    if-nez v1, :cond_1bd

    goto :goto_1c7

    :cond_1bd
    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v19, v8

    move-object v7, v2

    move v2, v1

    goto/16 :goto_278

    .line 559
    :cond_1c7
    :goto_1c7
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 p6, v1

    .end local v1  # "fgRequired":Z
    .restart local p6  # "fgRequired":Z
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v2

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v20, v3

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, p6

    .end local p6  # "fgRequired":Z
    .local v23, "fgRequired":Z
    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v4

    move/from16 v4, p4

    move-object/from16 v19, v8

    move-object v8, v5

    .end local v8  # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v5, v21

    move/from16 v20, v6

    .end local v6  # "callerFg":Z
    .restart local v20  # "callerFg":Z
    move/from16 v6, v22

    move/from16 v21, v7

    .end local v7  # "bgLaunch":Z
    .local v21, "bgLaunch":Z
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 561
    .local v0, "allowed":I
    if-eqz v0, :cond_274

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background start not allowed: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v24

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startFg?="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v23

    .end local v23  # "fgRequired":Z
    .local v2, "fgRequired":Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v1, 0x1

    if-eq v0, v1, :cond_272

    if-eqz v18, :cond_23e

    goto :goto_272

    .line 571
    :cond_23e
    if-eqz v16, :cond_24d

    .line 575
    if-eqz v2, :cond_24d

    .line 576
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v1, :cond_24b

    .line 577
    const-string v1, "Silently dropping foreground service launch due to FAS"

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_24b
    const/4 v1, 0x0

    return-object v1

    .line 584
    :cond_24d
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 585
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app is in background uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 569
    .end local v1  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_272
    :goto_272
    const/4 v1, 0x0

    return-object v1

    .line 561
    .end local v2  # "fgRequired":Z
    .restart local v23  # "fgRequired":Z
    :cond_274
    move/from16 v2, v23

    move-object/from16 v7, v24

    .line 593
    .end local v0  # "allowed":I
    .end local v23  # "fgRequired":Z
    .restart local v2  # "fgRequired":Z
    :goto_278
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2ab

    if-eqz v2, :cond_2ab

    .line 594
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-nez v0, :cond_28a

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_2a8

    .line 595
    :cond_28a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startForegroundService() but host targets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - not requiring startForeground()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_2a8
    const/4 v1, 0x0

    move v8, v1

    .end local v2  # "fgRequired":Z
    .local v1, "fgRequired":Z
    goto :goto_2ac

    .line 601
    .end local v1  # "fgRequired":Z
    .restart local v2  # "fgRequired":Z
    :cond_2ab
    move v8, v2

    .end local v2  # "fgRequired":Z
    .local v8, "fgRequired":Z
    :goto_2ac
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    iget v6, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 601
    move/from16 v1, p5

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v22

    .line 610
    .local v22, "neededGrants":Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p7

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, v20

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z

    move-result v0

    if-nez v0, :cond_2d6

    .line 612
    const/4 v0, 0x0

    return-object v0

    .line 615
    :cond_2d6
    const/4 v6, 0x0

    invoke-direct {v13, v10, v9, v6}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0

    if-eqz v0, :cond_2f5

    .line 616
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_2f5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 620
    iput-boolean v6, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 621
    iput-boolean v8, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 622
    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v0, v4

    move-object v1, v10

    move-object/from16 v27, v4

    move-object/from16 v4, p2

    move-object/from16 v28, v5

    move-object/from16 v5, v22

    move v12, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    if-eqz v8, :cond_357

    .line 627
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 628
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_338

    .line 629
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 632
    :cond_338
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v24

    const/16 v25, 0x4c

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v28, 0x1

    move-object/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 636
    .end local v0  # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_357
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v6

    .line 637
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v0, 0x0

    .line 638
    .local v0, "addToStarting":Z
    const-string v1, "): "

    move/from16 v5, v20

    .end local v20  # "callerFg":Z
    .restart local v5  # "callerFg":Z
    if-nez v5, :cond_474

    if-nez v8, :cond_474

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_474

    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 639
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v2

    if-eqz v2, :cond_474

    .line 640
    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4, v12}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 641
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_3f0

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_38d

    goto :goto_3f0

    .line 669
    :cond_38d
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3b0

    .line 673
    const/4 v0, 0x1

    .line 674
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_471

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delaying, but counting as bg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_471

    .line 676
    :cond_3b0
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v3, :cond_471

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 678
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Not potential delay (state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_3dd

    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_3dd
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_471

    .line 652
    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v7  # "reason":Ljava/lang/String;
    :cond_3f0
    :goto_3f0
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v1, :cond_410

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Potential start delay of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_410
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_42f

    .line 657
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_42c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuing to delay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_42c
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 660
    :cond_42f
    iget-object v1, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v13, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v3, :cond_458

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying start of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 665
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 667
    :cond_458
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_470

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delaying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_470
    const/4 v0, 0x1

    .line 689
    .end local v2  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_471
    :goto_471
    move v7, v0

    goto/16 :goto_4ee

    :cond_474
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_4ed

    .line 690
    if-nez v5, :cond_4bd

    if-eqz v8, :cond_47d

    goto :goto_4bd

    .line 693
    :cond_47d
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_49e

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not potential delay (cur app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ed

    .line 696
    :cond_49e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not potential delay (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not started): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ed

    .line 691
    :cond_4bd
    :goto_4bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not potential delay (callerFg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fgRequired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_4ed
    :goto_4ed
    move v7, v0

    .end local v0  # "addToStarting":Z
    .local v7, "addToStarting":Z
    :goto_4ee
    if-eqz p9, :cond_4f3

    .line 702
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->whitelistBgActivityStartsOnServiceStart()V

    .line 707
    :cond_4f3
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p1

    move v12, v5

    .end local v5  # "callerFg":Z
    .local v12, "callerFg":Z
    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->hook_freezeStartServiceProcess(Lcom/android/server/am/ServiceRecord;IILandroid/app/IApplicationThread;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_527

    .line 708
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_525

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " skipped unfreeze <start> service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_525
    const/4 v0, 0x0

    return-object v0

    .line 715
    :cond_527
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v10

    move v4, v12

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v0

    .line 716
    .local v0, "cmp":Landroid/content/ComponentName;
    return-object v0
.end method

.method stopInBackgroundLocked(I)V
    .registers 15
    .param p1, "uid"  # I

    .line 874
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 875
    .local v0, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    .line 876
    .local v1, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v0, :cond_b5

    .line 877
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_99

    .line 878
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 879
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_95

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_95

    .line 880
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v4

    if-eqz v4, :cond_95

    .line 883
    if-nez v1, :cond_49

    .line 884
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 886
    :cond_49
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 887
    .local v4, "compName":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 889
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "Stopping service due to app idle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 891
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-wide v7, v3, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 892
    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 894
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 903
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 877
    .end local v3  # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4  # "compName":Ljava/lang/String;
    .end local v5  # "sb":Ljava/lang/StringBuilder;
    :cond_95
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_17

    .line 908
    .end local v2  # "i":I
    :cond_99
    if-eqz v1, :cond_b5

    .line 909
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2  # "i":I
    :goto_a1
    if-ltz v2, :cond_b5

    .line 910
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 911
    .restart local v3  # "service":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 912
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 913
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 909
    .end local v3  # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_a1

    .line 917
    .end local v2  # "i":I
    :cond_b5
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 23
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "service"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 833
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_2c
    move-object/from16 v12, p3

    .line 836
    :goto_2e
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 837
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_64

    if-eqz v16, :cond_39

    goto :goto_64

    .line 838
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_64
    :goto_64
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 845
    const-string/jumbo v17, "stop"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    move v12, v0

    move-object/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 851
    .local v1, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v1, :cond_a5

    .line 852
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_a3

    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 856
    .local v2, "origId":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v14, v0}, Lcom/android/server/am/ActiveServices;->hook_freezeStopServiceProcess(Lcom/android/server/am/ServiceRecord;)V

    .line 859
    :try_start_93
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v14, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_9e

    .line 861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    nop

    .line 863
    const/4 v0, 0x1

    return v0

    .line 861
    :catchall_9e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 865
    .end local v2  # "origId":J
    :cond_a3
    const/4 v0, -0x1

    return v0

    .line 868
    :cond_a5
    const/4 v0, 0x0

    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 11
    .param p1, "className"  # Landroid/content/ComponentName;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "startId"  # I

    .line 958
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopServiceToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_2b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 961
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_d9

    .line 962
    if-ltz p3, :cond_8e

    .line 966
    invoke-virtual {v0, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 967
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_55

    .line 968
    :goto_3e
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_55

    .line 969
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 970
    .local v3, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 971
    if-ne v3, v2, :cond_54

    .line 972
    goto :goto_55

    .line 974
    .end local v3  # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_54
    goto :goto_3e

    .line 977
    :cond_55
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-eq v3, p3, :cond_5c

    .line 978
    return v1

    .line 981
    :cond_5c
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8e

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopServiceToken startId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is last, but have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 983
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining args"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    .end local v2  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_8e
    const/16 v2, 0x63

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 989
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 988
    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 990
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    .line 991
    :try_start_ab
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 992
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_d6

    .line 993
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 994
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_c8

    .line 995
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 995
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 998
    :cond_c8
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1000
    .local v2, "origId":J
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    const/4 v1, 0x1

    return v1

    .line 992
    .end local v2  # "origId":J
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v1

    .line 1004
    :cond_d9
    return v1
.end method

.method systemServicesReady()V
    .registers 3

    .line 409
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 410
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 411
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .registers 15
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "doRebind"  # Z

    .line 2146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2148
    .local v0, "origId":J
    if-eqz p1, :cond_8c

    .line 2149
    :try_start_6
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2151
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 2152
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_49

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unbindFinished in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": apps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    if-eqz v3, :cond_3e

    iget-object v7, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    goto :goto_3f

    :cond_3e
    move v7, v5

    :goto_3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2152
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_49
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2157
    .local v4, "inDestroying":Z
    if-eqz v3, :cond_83

    .line 2158
    iget-object v6, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_81

    if-nez v4, :cond_81

    .line 2161
    const/4 v6, 0x0

    .line 2162
    .local v6, "inFg":Z
    iget-object v8, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_64
    if-ltz v8, :cond_7b

    .line 2163
    iget-object v9, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2164
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_78

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_74
    .catchall {:try_start_6 .. :try_end_74} :catchall_87

    if-eqz v10, :cond_78

    .line 2166
    const/4 v6, 0x1

    .line 2167
    goto :goto_7b

    .line 2162
    .end local v9  # "client":Lcom/android/server/am/ProcessRecord;
    :cond_78
    add-int/lit8 v8, v8, -0x1

    goto :goto_64

    .line 2171
    .end local v8  # "i":I
    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-direct {p0, p1, v3, v6, v7}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_7e
    .catch Landroid/os/TransactionTooLargeException; {:try_start_7b .. :try_end_7e} :catch_7f
    .catchall {:try_start_7b .. :try_end_7e} :catchall_87

    .line 2174
    goto :goto_80

    .line 2172
    :catch_7f
    move-exception v7

    .line 2175
    .end local v6  # "inFg":Z
    :goto_80
    goto :goto_83

    .line 2178
    :cond_81
    :try_start_81
    iput-boolean v7, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 2182
    :cond_83
    :goto_83
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_87

    goto :goto_8c

    .line 2185
    .end local v2  # "filter":Landroid/content/Intent$FilterComparison;
    .end local v3  # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v4  # "inDestroying":Z
    :catchall_87
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_8c
    :goto_8c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2186
    nop

    .line 2187
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 16
    .param p1, "connection"  # Landroid/app/IServiceConnection;

    .line 2079
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2080
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindService: conn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2082
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_43

    .line 2083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbind failed: could not find connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2083
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return v3

    .line 2088
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2090
    .local v4, "origId":J
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_13b

    .line 2091
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2092
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    new-instance v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v8}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 2093
    .local v8, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 2094
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 2095
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-wide v9, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v9, v9

    iput-wide v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 2096
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_8f

    .line 2097
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2098
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    goto :goto_94

    .line 2100
    :cond_8f
    const/4 v9, -0x1

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2101
    iput-boolean v3, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 2104
    :goto_94
    new-instance v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v9}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 2105
    .local v9, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 2106
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_a9
    .catchall {:try_start_47 .. :try_end_a9} :catchall_148

    .line 2108
    const/4 v10, 0x0

    :try_start_aa
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 2109
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v11, v8, v9}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b5} :catch_b6
    .catchall {:try_start_aa .. :try_end_b5} :catchall_148

    .line 2114
    :cond_b5
    goto :goto_be

    .line 2111
    :catch_b6
    move-exception v11

    .line 2112
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_b7
    const-string v12, "Failed to send unbind details to servicetracker HAL"

    invoke-static {v2, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2113
    iput-object v10, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 2115
    .end local v11  # "e":Landroid/os/RemoteException;
    :goto_be
    invoke-virtual {p0, v6, v10, v10}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 2116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_ec

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_ec

    .line 2118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " not removed for binder "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2122
    :cond_ec
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_139

    .line 2123
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v11, :cond_107

    .line 2124
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v11}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2127
    :cond_107
    iget v11, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_139

    .line 2128
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2129
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2130
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v13

    if-nez v13, :cond_136

    iget-object v13, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v13, :cond_135

    goto :goto_136

    :cond_135
    move v7, v3

    .line 2129
    :cond_136
    :goto_136
    invoke-virtual {v11, v12, v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2134
    .end local v6  # "r":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v9  # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :cond_139
    goto/16 :goto_47

    .line 2136
    :cond_13b
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_b7 .. :try_end_143} :catchall_148

    .line 2139
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2140
    nop

    .line 2142
    return v7

    .line 2139
    :catchall_148
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 20
    .param p1, "smap"  # Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1091
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1092
    .local v3, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1093
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1094
    .local v5, "now":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1095
    .local v7, "nextUpdateTime":J
    if-eqz v2, :cond_10b

    .line 1096
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_32

    const-string v0, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating foreground apps for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v9, v0

    .line 1100
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v10, v0

    .line 1102
    .local v10, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_11c

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move-object v12, v3

    move v3, v0

    .local v3, "i":I
    .local v12, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    :goto_46
    if-ltz v3, :cond_cb

    .line 1103
    :try_start_48
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    move-object v13, v0

    .line 1104
    .local v13, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-eqz v0, :cond_70

    .line 1105
    invoke-virtual {v1, v13, v5, v6}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v0

    .line 1106
    .local v0, "canRemove":Z
    if-eqz v0, :cond_67

    .line 1108
    iget-object v14, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1109
    iput-boolean v11, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1110
    goto :goto_c7

    .line 1112
    :cond_67
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v14, v14, v7

    if-gez v14, :cond_70

    .line 1113
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v7, v14

    .line 1116
    .end local v0  # "canRemove":Z
    :cond_70
    iget-boolean v0, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v0, :cond_c7

    .line 1117
    if-nez v12, :cond_7c

    .line 1118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1121
    :cond_7c
    iget v0, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I
    :try_end_7e
    .catchall {:try_start_48 .. :try_end_7e} :catchall_108

    const/16 v14, 0x2710

    if-ge v0, v14, :cond_83

    .line 1122
    goto :goto_c7

    .line 1125
    :cond_83
    :try_start_83
    iget-object v0, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    const v14, 0x402000

    iget v15, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v10, v0, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1127
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v14, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v14, v11

    if-nez v14, :cond_9c

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_95} :catch_9d
    .catchall {:try_start_83 .. :try_end_95} :catchall_108

    const/high16 v15, -0x80000000

    and-int/2addr v14, v15

    if-eqz v14, :cond_9b

    goto :goto_9c

    .line 1132
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_9b
    goto :goto_9e

    .line 1129
    .restart local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_9c
    :goto_9c
    goto :goto_c7

    .line 1131
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_9d
    move-exception v0

    .line 1136
    :goto_9e
    :try_start_9e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_c4

    const-string v0, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding active: pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_c4
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    .end local v13  # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_46

    .line 1141
    .end local v3  # "i":I
    :cond_cb
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 1142
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v3, v7, v13

    if-gez v3, :cond_106

    .line 1143
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v3, :cond_f4

    const-string v3, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Next update time in: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v7, v5

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_f4
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1146
    .local v0, "msg":Landroid/os/Message;
    nop

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 1146
    invoke-virtual {v2, v0, v13, v14}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_106
    .catchall {:try_start_9e .. :try_end_106} :catchall_108

    .line 1150
    .end local v0  # "msg":Landroid/os/Message;
    .end local v9  # "context":Landroid/content/Context;
    .end local v10  # "pm":Landroid/content/pm/PackageManager;
    :cond_106
    move-object v3, v12

    goto :goto_10b

    .line 1154
    .end local v5  # "now":J
    .end local v7  # "nextUpdateTime":J
    :catchall_108
    move-exception v0

    move-object v3, v12

    goto :goto_11d

    .line 1150
    .end local v12  # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    .local v3, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    .restart local v5  # "now":J
    .restart local v7  # "nextUpdateTime":J
    :cond_10b
    :goto_10b
    :try_start_10b
    iget-boolean v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v0, :cond_114

    .line 1151
    monitor-exit v4
    :try_end_110
    .catchall {:try_start_10b .. :try_end_110} :catchall_11c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1153
    :cond_114
    const/4 v0, 0x0

    :try_start_115
    iput-boolean v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1154
    .end local v5  # "now":J
    .end local v7  # "nextUpdateTime":J
    monitor-exit v4
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_11c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1157
    return-void

    .line 1154
    :catchall_11c
    move-exception v0

    :goto_11d
    :try_start_11d
    monitor-exit v4
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method updateScreenStateLocked(Z)V
    .registers 16
    .param p1, "screenOn"  # Z

    .line 1268
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v0, p1, :cond_92

    .line 1269
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1273
    if-eqz p1, :cond_92

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1275
    .local v0, "nowElapsed":J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_17

    const-string v2, "ActivityManager"

    const-string v3, "Screen turned on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_17
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_92

    .line 1277
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1278
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-wide v5, 0x7fffffffffffffffL

    .line 1279
    .local v5, "nextUpdateTime":J
    const/4 v7, 0x0

    .line 1280
    .local v7, "changed":Z
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "j":I
    :goto_36
    const-wide/16 v9, 0x0

    if-ltz v8, :cond_7d

    .line 1281
    iget-object v11, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1282
    .local v11, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v9, v12, v9

    if-nez v9, :cond_51

    .line 1283
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_7a

    .line 1284
    iput-boolean v3, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1285
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_7a

    .line 1288
    :cond_51
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_61

    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_61

    .line 1293
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1295
    :cond_61
    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 1298
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1300
    const/4 v7, 0x1

    goto :goto_7a

    .line 1302
    :cond_72
    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_7a

    .line 1303
    iget-wide v5, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1280
    .end local v11  # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_7a
    :goto_7a
    add-int/lit8 v8, v8, -0x1

    goto :goto_36

    .line 1308
    .end local v8  # "j":I
    :cond_7d
    if-eqz v7, :cond_83

    .line 1310
    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_8f

    .line 1311
    :cond_83
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v5, v8

    if-gez v8, :cond_8f

    .line 1312
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1276
    .end local v4  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5  # "nextUpdateTime":J
    .end local v7  # "changed":Z
    :cond_8f
    :goto_8f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 1317
    .end local v0  # "nowElapsed":J
    .end local v2  # "i":I
    :cond_92
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "applicationInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 4462
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4463
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4464
    .local v1, "serviceMap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_35

    .line 4465
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4467
    .local v2, "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_18
    if-ltz v3, :cond_35

    .line 4468
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4469
    .local v4, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4470
    iput-object p1, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 4471
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4467
    .end local v4  # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 4475
    .end local v2  # "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v3  # "j":I
    :cond_35
    return-void
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "clientProc"  # Lcom/android/server/am/ProcessRecord;

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 1617
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1618
    .local v2, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1619
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_35

    if-ne v3, p1, :cond_1d

    .line 1620
    goto :goto_35

    .line 1621
    :cond_1d
    if-nez v0, :cond_26

    .line 1622
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    goto :goto_2d

    .line 1623
    :cond_26
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1624
    goto :goto_35

    .line 1626
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1627
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1616
    .end local v2  # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v3  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1629
    .end local v1  # "i":I
    :cond_38
    return-void
.end method

.method updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .registers 12
    .param p1, "connection"  # Landroid/app/IServiceConnection;
    .param p2, "group"  # I
    .param p3, "importance"  # I

    .line 2044
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2045
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServiceGroup: conn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2047
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v1, :cond_76

    .line 2051
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2f
    if-ltz v2, :cond_75

    .line 2052
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 2053
    .local v3, "crec":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2054
    .local v4, "srec":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_72

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_72

    .line 2055
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_67

    .line 2056
    if-lez p2, :cond_59

    .line 2057
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2058
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p2, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2059
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p3, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_72

    .line 2061
    :cond_59
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2062
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2063
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_72

    .line 2066
    :cond_67
    if-lez p2, :cond_6e

    .line 2067
    iput p2, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2068
    iput p3, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_72

    .line 2070
    :cond_6e
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2071
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 2051
    .end local v3  # "crec":Lcom/android/server/am/ConnectionRecord;
    .end local v4  # "srec":Lcom/android/server/am/ServiceRecord;
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 2076
    .end local v2  # "i":I
    :cond_75
    return-void

    .line 2048
    :cond_76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 4931
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4932
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4933
    .local v4, "outterToken":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4934
    .local v0, "users":[I
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_19
    if-ge v8, v6, :cond_63

    aget v9, v0, v8

    .line 4935
    .local v9, "user":I
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4936
    .local v10, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v10, :cond_2a

    .line 4937
    move/from16 v16, v8

    goto :goto_5f

    .line 4939
    :cond_2a
    const-wide v11, 0x20b00000001L

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4940
    .local v11, "token":J
    const-wide v13, 0x10500000001L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4941
    iget-object v13, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4942
    .local v13, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v14, v7

    .local v14, "i":I
    :goto_3e
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_5a

    .line 4943
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    move/from16 v16, v8

    const-wide v7, 0x20b00000002L

    invoke-virtual {v15, v2, v7, v8}, Lcom/android/server/am/ServiceRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4942
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_3e

    :cond_5a
    move/from16 v16, v8

    .line 4946
    .end local v14  # "i":I
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4934
    .end local v9  # "user":I
    .end local v10  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v11  # "token":J
    .end local v13  # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :goto_5f
    add-int/lit8 v8, v16, 0x1

    const/4 v7, 0x0

    goto :goto_19

    .line 4948
    :cond_63
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4949
    .end local v0  # "users":[I
    .end local v4  # "outterToken":J
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_6b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4950
    return-void

    .line 4949
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
