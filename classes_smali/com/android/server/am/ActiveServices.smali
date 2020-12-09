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
.field private static final DEBUG_DELAYED_SERVICE:Z = false

.field private static final DEBUG_DELAYED_STARTS:Z = false

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_START_FOREGROUND_TIMEOUT:I = 0x2710

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


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
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 180
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 360
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 361
    nop

    .line 363
    :try_start_36
    const-string/jumbo p1, "ro.config.max_starting_bg"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_43} :catch_44

    .line 365
    goto :goto_46

    .line 364
    :catch_44
    move-exception p1

    const/4 p1, 0x0

    .line 366
    :goto_46
    if-lez p1, :cond_4a

    .line 367
    move v0, p1

    goto :goto_53

    :cond_4a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_53

    :cond_51
    const/16 v0, 0x8

    :goto_53
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    return-object p0
.end method

.method private appIsTopLocked(I)Z
    .registers 3

    .line 1248
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1

    .line 403
    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 4

    .line 2895
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2896
    return-void

    .line 2900
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2901
    return-void

    .line 2904
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2905
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 12

    .line 2913
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2914
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v1, :cond_7a

    .line 2915
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2916
    nop

    :goto_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_77

    .line 2917
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2920
    iput-boolean v2, v6, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 2921
    invoke-virtual {v6}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 2923
    :try_start_26
    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v3, v2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 2928
    goto :goto_74

    .line 2924
    :catch_2e
    move-exception v6

    .line 2925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure disconnecting service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v8}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2925
    const-string v8, "ActivityManager"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2916
    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 2914
    :cond_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2933
    :cond_7a
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e6

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_e6

    .line 2934
    nop

    .line 2935
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v4

    :goto_8d
    if-ltz v0, :cond_da

    .line 2936
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 2939
    iget-boolean v6, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_d7

    .line 2941
    :try_start_9b
    const-string v6, "bring down unbind"

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_b7

    .line 2942
    nop

    .line 2943
    :try_start_a1
    iput-boolean v4, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2944
    iput-boolean v4, v5, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2945
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2946
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 2945
    invoke-interface {v1, p1, v5}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b2} :catch_b4

    .line 2951
    move v1, v2

    goto :goto_d7

    .line 2947
    :catch_b4
    move-exception v1

    move v5, v2

    goto :goto_bb

    :catch_b7
    move-exception v5

    move-object v9, v5

    move v5, v1

    move-object v1, v9

    .line 2948
    :goto_bb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when unbinding service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2950
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    move v1, v5

    .line 2935
    :cond_d7
    :goto_d7
    add-int/lit8 v0, v0, -0x1

    goto :goto_8d

    .line 2954
    :cond_da
    if-eqz v1, :cond_e6

    .line 2955
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v5, "updateOomAdj_unbindService"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 2962
    :cond_e6
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    const/16 v1, 0x4c

    if-eqz v0, :cond_15e

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActivityManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 2966
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 2967
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 2968
    if-eqz v0, :cond_119

    .line 2969
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 2972
    :cond_119
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 2974
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x42

    invoke-virtual {v0, v5, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2976
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15e

    .line 2977
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x45

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2979
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2980
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 2981
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2980
    const-string/jumbo v7, "servicerecord"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2982
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2991
    :cond_15e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 2997
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 2998
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3002
    if-eqz v5, :cond_19f

    if-ne v5, p1, :cond_179

    goto :goto_19f

    .line 3005
    :cond_179
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bringing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but actually running "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3009
    :cond_19f
    :goto_19f
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    iput v4, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3011
    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 3014
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_1b2
    if-ltz v5, :cond_1c4

    .line 3015
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1c1

    .line 3016
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3014
    :cond_1c1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b2

    .line 3021
    :cond_1c4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3022
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_20b

    .line 3023
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 3024
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 3025
    if-eqz v5, :cond_1e1

    .line 3026
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-wide v7, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3029
    :cond_1e1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 3030
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3029
    invoke-virtual {v5, v6, v1, v7, v8}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3032
    const/16 v1, 0x3c

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v1, v5, v6, v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 3034
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v6, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 3037
    :cond_20b
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 3038
    iput v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 3039
    iput-object v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 3042
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 3043
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3044
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3046
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_28d

    .line 3047
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 3048
    :try_start_229
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3049
    monitor-exit v1
    :try_end_22f
    .catchall {:try_start_229 .. :try_end_22f} :catchall_28a

    .line 3050
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3051
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3052
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v1, :cond_244

    .line 3053
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3055
    :cond_244
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_28d

    .line 3056
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3058
    :try_start_24f
    const-string v1, "destroy"

    invoke-direct {p0, p1, v4, v1}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3059
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3060
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 3061
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "updateOomAdj_unbindService"

    invoke-virtual {v1, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3063
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_26c} :catch_26d

    .line 3068
    goto :goto_28d

    .line 3064
    :catch_26d
    move-exception v1

    .line 3065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when destroying service "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3067
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_28d

    .line 3049
    :catchall_28a
    move-exception p1

    :try_start_28b
    monitor-exit v1
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_28a

    throw p1

    .line 3078
    :cond_28d
    :goto_28d
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_29a

    .line 3079
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3082
    :cond_29a
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v1, v1, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v1, :cond_2a7

    .line 3083
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3086
    :cond_2a7
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 3087
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3088
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_2cc

    .line 3089
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3090
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3091
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v1, :cond_2cc

    .line 3092
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v1, p1, v4}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3093
    iput-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3097
    :cond_2cc
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3098
    return-void
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2528
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_16

    .line 2529
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2530
    return-object v4

    .line 2533
    :cond_16
    if-nez p4, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2535
    return-object v4

    .line 2544
    :cond_21
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2545
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2549
    :cond_2c
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_3d

    .line 2551
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2552
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 2557
    :cond_3d
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const-string v6, " for service "

    const-string v7, "/"

    const-string v8, "Unable to launch app "

    const-string v9, "ActivityManager"

    if-nez v0, :cond_90

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2561
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2562
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2564
    return-object v0

    .line 2569
    :cond_90
    :try_start_90
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v10, v5, v11}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9b} :catch_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_9b} :catch_9c

    goto :goto_bd

    .line 2572
    :catch_9c
    move-exception v0

    .line 2573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed trying to unstop package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 2571
    :catch_bc
    move-exception v0

    .line 2575
    :goto_bd
    nop

    .line 2577
    :goto_be
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ca

    const/4 v0, 0x1

    move/from16 v20, v0

    goto :goto_cc

    :cond_ca
    move/from16 v20, v5

    .line 2578
    :goto_cc
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2579
    new-instance v10, Lcom/android/server/am/HostingRecord;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    const-string/jumbo v12, "service"

    invoke-direct {v10, v12, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 2582
    if-nez v20, :cond_119

    .line 2583
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v11, v12, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 2586
    if-eqz v12, :cond_117

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_117

    .line 2588
    :try_start_ea
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v13, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v15, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v12, v0, v13, v14, v15}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2589
    invoke-direct {v1, v2, v12, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_fc
    .catch Landroid/os/TransactionTooLargeException; {:try_start_ea .. :try_end_fc} :catch_115
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_fc} :catch_fd

    .line 2590
    return-object v4

    .line 2593
    :catch_fd
    move-exception v0

    .line 2594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when starting service "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2595
    goto :goto_117

    .line 2591
    :catch_115
    move-exception v0

    .line 2592
    throw v0

    .line 2620
    :cond_117
    :goto_117
    move-object v15, v10

    goto :goto_14a

    .line 2607
    :cond_119
    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2608
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2609
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 2610
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;

    move-result-object v10

    .line 2612
    :cond_135
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_149

    .line 2613
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    invoke-static {v0, v3, v10}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;

    move-result-object v0

    move-object v15, v0

    goto :goto_14a

    .line 2612
    :cond_149
    move-object v15, v10

    .line 2620
    :goto_14a
    if-nez v12, :cond_19c

    if-nez p5, :cond_19c

    .line 2623
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v14, p2

    move/from16 v18, v20

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_198

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2628
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": process is bad"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2629
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2631
    return-object v0

    .line 2633
    :cond_198
    if-eqz v20, :cond_19c

    .line 2634
    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2638
    :cond_19c
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_1ad

    .line 2643
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v6, 0x2710

    const-string v8, "fg-service-launch"

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 2647
    :cond_1ad
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba

    .line 2648
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    :cond_1ba
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_1c7

    .line 2653
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 2654
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_1c7

    .line 2657
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2661
    :cond_1c7
    return-object v4
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .registers 9

    .line 2276
    nop

    .line 2277
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget p3, p3, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/4 v0, 0x1

    const/16 v1, 0x258

    if-ge p3, v1, :cond_40

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_40

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget p3, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2278
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p3, v1, :cond_40

    .line 2280
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2280
    const-string v1, "ActivityManager"

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/4 p3, 0x0

    goto :goto_41

    .line 2285
    :cond_40
    move p3, v0

    :goto_41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2286
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_80

    .line 2287
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2288
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 2289
    if-eqz v3, :cond_5c

    .line 2290
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 2292
    :cond_5c
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_98

    .line 2293
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2294
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2295
    if-eqz p3, :cond_98

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-ne p3, v0, :cond_98

    .line 2296
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_98

    .line 2299
    :cond_80
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_98

    if-eqz p2, :cond_98

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_98

    .line 2300
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2301
    if-eqz p3, :cond_99

    .line 2302
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_99

    .line 2299
    :cond_98
    :goto_98
    nop

    .line 2305
    :cond_99
    :goto_99
    iget-boolean p3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2306
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2307
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2308
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 1473
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_37

    .line 1478
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_34

    .line 1480
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_34

    .line 1481
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1482
    if-eq v2, p1, :cond_31

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_31

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1483
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1485
    return-void

    .line 1480
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1489
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1491
    :cond_37
    return-void
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 2507
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_3a

    .line 2510
    nop

    .line 2511
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    const/4 v2, 0x0

    if-ltz v0, :cond_23

    .line 2512
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v3, v4, :cond_20

    .line 2513
    nop

    .line 2514
    goto :goto_24

    .line 2511
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_23
    move v1, v2

    .line 2517
    :goto_24
    if-nez v1, :cond_3a

    .line 2518
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 2519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2518
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 2520
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 2523
    :cond_3a
    return-void
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .registers 12
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

    .line 3421
    nop

    .line 3422
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ltz v0, :cond_93

    .line 3423
    invoke-virtual {p5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3424
    if-eqz p1, :cond_2c

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3425
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    if-eqz p2, :cond_2c

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3427
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_2c

    :cond_2a
    move v5, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v5, v1

    .line 3428
    :goto_2d
    if-eqz v5, :cond_8f

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3d

    if-nez p3, :cond_3d

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3429
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_8f

    .line 3430
    :cond_3d
    if-nez p4, :cond_40

    .line 3431
    return v1

    .line 3433
    :cond_40
    nop

    .line 3434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force stopping service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_78

    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_78

    .line 3436
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3437
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3438
    iget-boolean v3, v4, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_78

    .line 3439
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3442
    :cond_78
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3443
    iput-object v3, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3444
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v3, :cond_89

    .line 3445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 3447
    :cond_89
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    .line 3422
    :cond_8f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    .line 3450
    :cond_93
    return v3
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 1152
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1153
    if-eqz v0, :cond_43

    .line 1154
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1155
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_43

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1158
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1160
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1162
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_43

    .line 1163
    :cond_33
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p2, v1, v3

    if-gez p2, :cond_43

    .line 1164
    iget-wide v0, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1168
    :cond_43
    :goto_43
    return-void
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 10

    .line 4480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4481
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4483
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4484
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4486
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_45

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4a

    .line 4487
    :cond_45
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4488
    :goto_4a
    if-eqz p6, :cond_4f

    .line 4489
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4491
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4492
    iget-object p6, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p6, :cond_c6

    iget-object p6, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p6, p6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p6, :cond_c6

    .line 4493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p6, "  Client:"

    invoke-virtual {p3, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4494
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 4496
    :try_start_68
    new-instance p6, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p6}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_98

    .line 4498
    :try_start_6d
    iget-object v0, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 4499
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "    "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 4500
    invoke-virtual {p6, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_93

    .line 4502
    :try_start_8f
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4503
    goto :goto_c6

    .line 4502
    :catchall_93
    move-exception p2

    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw p2
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_98} :catch_98

    .line 4506
    :catch_98
    move-exception p2

    .line 4507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Got a RemoteException while dumping the service"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6

    .line 4504
    :catch_ae
    move-exception p2

    .line 4505
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Failure while dumping the service: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4510
    :cond_c6
    :goto_c6
    return-void

    .line 4491
    :catchall_c7
    move-exception p1

    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 4

    .line 2032
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    .line 2033
    if-ne p1, p2, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return-object p1
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 389
    if-nez v0, :cond_1c

    .line 390
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 391
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    :cond_1c
    return-object v0
.end method

.method private final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 6

    .line 2875
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2876
    return v1

    .line 2880
    :cond_6
    if-nez p2, :cond_c

    .line 2881
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 2883
    :cond_c
    if-eqz p3, :cond_f

    .line 2884
    return v1

    .line 2887
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2681
    move-object v1, p0

    move-object v9, p1

    move-object/from16 v2, p2

    move/from16 v0, p3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_112

    .line 2687
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v3, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 2690
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2691
    const-string v4, "create"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2692
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v10, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2693
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v10}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2694
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "updateOomAdj_startService"

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2696
    nop

    .line 2706
    const/16 v4, 0x64

    :try_start_37
    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 2707
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 2706
    invoke-static {v4, v6, v7, v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;)I

    .line 2708
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4
    :try_end_51
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_51} :catch_dc
    .catchall {:try_start_37 .. :try_end_51} :catchall_da

    .line 2709
    :try_start_51
    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 2710
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_d7

    .line 2711
    :try_start_57
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v4, v6, v11}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2713
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2714
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2715
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 2716
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v8

    .line 2714
    invoke-interface {v4, p1, v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 2717
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_7e
    .catch Landroid/os/DeadObjectException; {:try_start_57 .. :try_end_7e} :catch_dc
    .catchall {:try_start_57 .. :try_end_7e} :catchall_da

    .line 2718
    nop

    .line 2724
    nop

    .line 2742
    iget-boolean v4, v9, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v4, :cond_86

    .line 2743
    iput-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 2746
    :cond_86
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 2748
    invoke-direct {p0, v2, v5, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2750
    if-eqz v3, :cond_91

    .line 2751
    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 2757
    :cond_91
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_b5

    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v2, :cond_b5

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b5

    .line 2758
    iget-object v12, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_b5
    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2764
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_c9

    .line 2766
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2767
    iput-boolean v10, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 2770
    :cond_c9
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_d6

    .line 2772
    iput-boolean v10, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 2773
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_d6

    .line 2776
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2779
    :cond_d6
    return-void

    .line 2710
    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    :try_start_d9
    throw v0
    :try_end_da
    .catch Landroid/os/DeadObjectException; {:try_start_d9 .. :try_end_da} :catch_dc
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 2724
    :catchall_da
    move-exception v0

    goto :goto_f9

    .line 2719
    :catch_dc
    move-exception v0

    .line 2720
    :try_start_dd
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application dead when creating service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2722
    throw v0
    :try_end_f9
    .catchall {:try_start_dd .. :try_end_f9} :catchall_da

    .line 2726
    :goto_f9
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2727
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2730
    if-eqz v3, :cond_10c

    .line 2731
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2732
    invoke-virtual {p1, v5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2736
    :cond_10c
    if-nez v4, :cond_111

    .line 2737
    invoke-direct {p0, p1, v10}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 2739
    :cond_111
    throw v0

    .line 2682
    :cond_112
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2312
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_c

    goto :goto_5a

    .line 2318
    :cond_c
    iget-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    if-eqz p4, :cond_59

    :cond_13
    iget-object v0, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 2320
    :try_start_1b
    const-string v0, "bind"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2321
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v0, 0xb

    invoke-virtual {p3, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2322
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2323
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    .line 2322
    invoke-interface {p3, p1, v0, p4, v3}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 2324
    if-nez p4, :cond_3e

    .line 2325
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2327
    :cond_3e
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2328
    iput-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_42
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1b .. :try_end_42} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_42} :catch_43

    .line 2341
    goto :goto_59

    .line 2335
    :catch_43
    move-exception p2

    .line 2338
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 2339
    invoke-direct {p0, p1, p2, p2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2340
    return v1

    .line 2329
    :catch_4e
    move-exception p2

    .line 2332
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 2333
    invoke-direct {p0, p1, p3, p3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2334
    throw p2

    .line 2343
    :cond_59
    :goto_59
    return v2

    .line 2314
    :cond_5a
    :goto_5a
    return v1
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2666
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    .line 2667
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 2668
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2669
    goto :goto_1d

    .line 2666
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2672
    :cond_1d
    :goto_1d
    return-void
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z
    .registers 25

    .line 652
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

    if-eqz v3, :cond_99

    .line 656
    const/4 v3, 0x0

    if-nez p5, :cond_43

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Starting a service in package"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v3

    .line 662
    :cond_43
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v7, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v14, v4, [Landroid/content/Intent;

    aput-object v2, v14, v3

    new-array v15, v4, [Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 665
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v3

    const/high16 v16, 0x54000000

    const/16 v17, 0x0

    .line 662
    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p6

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v2

    .line 669
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    const/high16 v5, 0x18800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ActiveServices$2;

    move/from16 v5, p6

    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return v3

    .line 691
    :cond_99
    return v4
.end method

.method private requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .registers 7

    .line 1141
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1142
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1a

    .line 1143
    nop

    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr p2, v1

    .line 1143
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_20

    .line 1146
    :cond_1a
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1147
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1149
    :goto_20
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 39

    .line 2065
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p4

    move/from16 v6, p5

    move/from16 v5, p6

    .line 2069
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v15, "service"

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2073
    invoke-direct {v1, v9}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v10

    .line 2075
    if-nez v0, :cond_2d

    .line 2076
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v11, v2

    goto :goto_55

    .line 2078
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2079
    if-eqz v2, :cond_4b3

    .line 2083
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2084
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v3

    .line 2086
    :goto_55
    const/4 v12, 0x0

    if-eqz v11, :cond_61

    .line 2087
    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    goto :goto_62

    .line 2086
    :cond_61
    move-object v2, v12

    .line 2090
    :goto_62
    if-nez v2, :cond_75

    if-nez p10, :cond_75

    if-nez v0, :cond_75

    .line 2091
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v8}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2092
    iget-object v3, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2095
    :cond_75
    if-eqz v2, :cond_89

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_89

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2096
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 2099
    move-object v13, v12

    goto :goto_8a

    .line 2102
    :cond_89
    move-object v13, v2

    :goto_8a
    if-nez v13, :cond_34e

    .line 2104
    const v2, 0x10000400

    .line 2106
    if-eqz p11, :cond_96

    .line 2107
    const v2, 0x10800400

    move v14, v2

    goto :goto_97

    .line 2106
    :cond_96
    move v14, v2

    .line 2110
    :goto_97
    :try_start_97
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9d} :catch_34a

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move v15, v5

    move v5, v14

    move v14, v6

    move v6, v9

    move/from16 v7, p6

    :try_start_a7
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2112
    if-eqz v2, :cond_b0

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_b1

    :cond_b0
    move-object v2, v12

    .line 2113
    :goto_b1
    if-nez v2, :cond_d7

    .line 2114
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " U="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    return-object v12

    .line 2118
    :cond_d7
    if-eqz v0, :cond_106

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_e0

    goto :goto_106

    .line 2120
    :cond_e0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t use instance name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with non-isolated service \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2123
    :cond_106
    :goto_106
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    if-eqz v11, :cond_114

    goto :goto_115

    :cond_114
    move-object v11, v3

    .line 2126
    :goto_115
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2127
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_11f} :catch_346

    .line 2126
    move-object/from16 v7, p4

    :try_start_121
    invoke-virtual {v4, v7, v15, v5, v6}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_160

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "association not allowed between packages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2130
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service lookup failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v2, v1, v12, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v2

    .line 2137
    :cond_160
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2138
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2139
    iget v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_240

    .line 2140
    if-eqz p10, :cond_229

    .line 2141
    iget-boolean v6, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v6, :cond_20d

    .line 2145
    iget v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1f1

    .line 2150
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v12, 0x400

    invoke-interface {v6, v7, v12, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2152
    if-eqz v6, :cond_1da

    .line 2156
    new-instance v12, Landroid/content/pm/ServiceInfo;

    invoke-direct {v12, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 2157
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v10

    iget-object v10, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v10}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v2, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2158
    iget-object v2, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2159
    iget-object v2, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v10, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2160
    new-instance v2, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    new-instance v10, Landroid/content/ComponentName;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2162
    if-nez v0, :cond_1b8

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d0

    .line 2163
    :cond_1b8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d0
    invoke-direct {v10, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2165
    move-object v11, v2

    move-object/from16 v19, v10

    goto :goto_247

    .line 2153
    :cond_1da
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2146
    :cond_1f1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not an isolatedProcess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2142
    :cond_20d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not exported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_229
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2169
    :cond_240
    move-object/from16 v16, v10

    if-nez p10, :cond_328

    move-object v12, v2

    move-object/from16 v19, v3

    .line 2173
    :goto_247
    if-lez v9, :cond_281

    .line 2174
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v3, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v10, v12, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v2, v3, v6, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26e

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2176
    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 2177
    nop

    .line 2178
    invoke-direct {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    move-object v10, v0

    move v9, v2

    goto :goto_270

    .line 2180
    :cond_26e
    move-object/from16 v10, v16

    :goto_270
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v12}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 2181
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v9}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v12, v0

    goto :goto_283

    .line 2173
    :cond_281
    move-object/from16 v10, v16

    .line 2183
    :goto_283
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/ServiceRecord;
    :try_end_28c
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_28c} :catch_344

    .line 2186
    if-nez v2, :cond_323

    if-eqz p8, :cond_323

    .line 2187
    :try_start_290
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2189
    new-instance v3, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 2191
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    .line 2192
    monitor-enter v6
    :try_end_2a8
    .catch Landroid/os/RemoteException; {:try_start_290 .. :try_end_2a8} :catch_31d

    .line 2193
    :try_start_2a8
    iget-object v9, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2194
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13
    :try_end_2b0
    .catchall {:try_start_2a8 .. :try_end_2b0} :catchall_314

    .line 2195
    move-object/from16 p2, v2

    :try_start_2b2
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-virtual {v6, v9, v13, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v18

    .line 2196
    monitor-exit v6
    :try_end_2bb
    .catchall {:try_start_2b2 .. :try_end_2bb} :catchall_31b

    .line 2197
    :try_start_2bb
    new-instance v2, Lcom/android/server/am/ServiceRecord;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v20, v11

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    move/from16 v25, p9

    move-object/from16 v26, v3

    invoke-direct/range {v16 .. v26}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_2d4
    .catch Landroid/os/RemoteException; {:try_start_2bb .. :try_end_2d4} :catch_319

    .line 2199
    :try_start_2d4
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2200
    iget-object v3, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    iget-object v3, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e9
    if-ltz v0, :cond_30f

    .line 2205
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 2206
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_30c

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 2207
    invoke-virtual {v3, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30c

    .line 2209
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_30c
    .catch Landroid/os/RemoteException; {:try_start_2d4 .. :try_end_30c} :catch_311

    .line 2204
    :cond_30c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e9

    :cond_30f
    move-object v13, v2

    goto :goto_327

    .line 2214
    :catch_311
    move-exception v0

    move-object v13, v2

    goto :goto_350

    .line 2196
    :catchall_314
    move-exception v0

    move-object/from16 p2, v2

    :goto_317
    :try_start_317
    monitor-exit v6
    :try_end_318
    .catchall {:try_start_317 .. :try_end_318} :catchall_31b

    :try_start_318
    throw v0
    :try_end_319
    .catch Landroid/os/RemoteException; {:try_start_318 .. :try_end_319} :catch_319

    .line 2214
    :catch_319
    move-exception v0

    goto :goto_320

    .line 2196
    :catchall_31b
    move-exception v0

    goto :goto_317

    .line 2214
    :catch_31d
    move-exception v0

    move-object/from16 p2, v2

    :goto_320
    move-object/from16 v13, p2

    goto :goto_350

    .line 2186
    :cond_323
    move-object/from16 p2, v2

    .line 2216
    move-object/from16 v13, p2

    :goto_327
    goto :goto_350

    .line 2170
    :cond_328
    :try_start_328
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not an externalService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_344
    .catch Landroid/os/RemoteException; {:try_start_328 .. :try_end_344} :catch_344

    .line 2214
    :catch_344
    move-exception v0

    goto :goto_350

    :catch_346
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_350

    :catch_34a
    move-exception v0

    move v15, v5

    move v14, v6

    goto :goto_350

    .line 2102
    :cond_34e
    move v15, v5

    move v14, v6

    .line 2218
    :goto_350
    if-eqz v13, :cond_4b1

    .line 2219
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v7, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_398

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "association not allowed between packages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service lookup failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v2

    .line 2226
    :cond_398
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v4, p1

    move/from16 v5, p6

    move/from16 v6, p5

    move-object v9, v7

    move-object/from16 v7, p3

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3b9

    .line 2228
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "blocked by firewall"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2230
    :cond_3b9
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v13, Lcom/android/server/am/ServiceRecord;->exported:Z

    invoke-static {v0, v14, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_459

    .line 2232
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_41e

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not exported from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2240
    :cond_41e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2245
    :cond_459
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_4aa

    if-eqz v9, :cond_4aa

    .line 2246
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 2247
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a8

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v2, v0, v15, v9}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4a8

    .line 2249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires appop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v2, 0x0

    return-object v2

    .line 2247
    :cond_4a8
    const/4 v2, 0x0

    goto :goto_4ab

    .line 2245
    :cond_4aa
    const/4 v2, 0x0

    .line 2256
    :goto_4ab
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2258
    :cond_4b1
    const/4 v2, 0x0

    return-object v2

    .line 2080
    :cond_4b3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t use custom instance name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' without expicit component in Intent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 23

    .line 2347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2349
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v2

    const-string v3, "ActivityManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not scheduling restart of crashed service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - system is shutting down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    return v4

    .line 2355
    :cond_2d
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    .line 2356
    iget-object v5, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v1, :cond_64

    .line 2357
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to schedule restart of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when found in map: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return v4

    .line 2363
    :cond_64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2365
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v7, 0x3

    const/4 v10, 0x1

    if-nez v2, :cond_17f

    .line 2367
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 2368
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 2372
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2373
    if-lez v2, :cond_f2

    .line 2374
    sub-int/2addr v2, v10

    move v15, v4

    :goto_8a
    if-ltz v2, :cond_ec

    .line 2375
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2376
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 2377
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v9, :cond_9c

    goto :goto_e8

    .line 2379
    :cond_9c
    if-eqz p2, :cond_ca

    iget v9, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-ge v9, v7, :cond_a8

    iget v9, v8, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v7, 0x6

    if-ge v9, v7, :cond_a8

    goto :goto_ca

    .line 2387
    :cond_a8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceling start item "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    move v15, v10

    goto :goto_e8

    .line 2381
    :cond_ca
    :goto_ca
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-wide v7, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v18, v18, v7

    .line 2383
    const-wide/16 v7, 0x2

    mul-long v18, v18, v7

    .line 2384
    cmp-long v7, v11, v18

    if-gez v7, :cond_e1

    move-wide/from16 v11, v18

    .line 2385
    :cond_e1
    cmp-long v7, v13, v18

    if-gez v7, :cond_e7

    move-wide/from16 v13, v18

    .line 2386
    :cond_e7
    nop

    .line 2374
    :goto_e8
    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x3

    goto :goto_8a

    .line 2392
    :cond_ec
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_f3

    .line 2373
    :cond_f2
    move v15, v4

    .line 2395
    :goto_f3
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2396
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v2, v7, v16

    if-nez v2, :cond_108

    .line 2397
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2398
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_13a

    .line 2399
    :cond_108
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v2, v10, :cond_11a

    .line 2400
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    sub-int/2addr v2, v10

    int-to-long v11, v2

    mul-long/2addr v7, v11

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_13a

    .line 2408
    :cond_11a
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v13

    cmp-long v2, v5, v7

    if-lez v2, :cond_126

    .line 2409
    iput v10, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2410
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_13a

    .line 2412
    :cond_126
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v13, v2

    mul-long/2addr v7, v13

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2413
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v2, v7, v11

    if-gez v2, :cond_13a

    .line 2414
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2419
    :cond_13a
    :goto_13a
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v5

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2425
    :cond_13f
    nop

    .line 2426
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 2427
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    :goto_14d
    if-ltz v2, :cond_17b

    .line 2428
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 2429
    if-eq v9, v1, :cond_178

    iget-wide v11, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v13, v9, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v13, v7

    cmp-long v11, v11, v13

    if-ltz v11, :cond_178

    iget-wide v11, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v13, v9, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v13, v7

    cmp-long v11, v11, v13

    if-gez v11, :cond_178

    .line 2431
    iget-wide v11, v9, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v11, v7

    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2432
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v7, v5

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2433
    nop

    .line 2434
    move v2, v10

    goto :goto_17c

    .line 2427
    :cond_178
    add-int/lit8 v2, v2, -0x1

    goto :goto_14d

    :cond_17b
    move v2, v4

    .line 2437
    :goto_17c
    if-nez v2, :cond_13f

    .line 2439
    goto :goto_18d

    .line 2442
    :cond_17f
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2443
    iput v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2444
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2445
    iput-wide v5, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move v15, v4

    .line 2448
    :goto_18d
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a7

    .line 2449
    iput-boolean v4, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 2450
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 2454
    :cond_1a7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2456
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2457
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling restart of crashed service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/16 v0, 0x7553

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 2462
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v3, v2, v10

    const/4 v3, 0x2

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    .line 2461
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2464
    return v15
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2783
    const-string v0, "Failed delivering service starts"

    const-string v1, "ActivityManager"

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2784
    if-nez v2, :cond_d

    .line 2785
    return-void

    .line 2788
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2790
    :goto_12
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_a5

    .line 2791
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2796
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    if-nez v6, :cond_2b

    if-le v2, v7, :cond_2b

    .line 2801
    goto :goto_12

    .line 2803
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 2804
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    iget v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 2806
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v6, :cond_4c

    .line 2807
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 2808
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v9

    .line 2807
    invoke-interface {v6, v8, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2810
    :cond_4c
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    iget v11, v4, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 2811
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 2810
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 2812
    const-string/jumbo v6, "start"

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2813
    if-nez p3, :cond_77

    .line 2814
    nop

    .line 2815
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v8, "updateOomAdj_startService"

    invoke-virtual {p3, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    move p3, v7

    .line 2817
    :cond_77
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_89

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v6, :cond_89

    .line 2818
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_87

    .line 2822
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_89

    .line 2827
    :cond_87
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 2830
    :cond_89
    :goto_89
    nop

    .line 2831
    iget v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v6, v7, :cond_8f

    .line 2832
    const/4 v5, 0x2

    .line 2834
    :cond_8f
    iget v6, v4, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v6, :cond_95

    .line 2835
    or-int/lit8 v5, v5, 0x1

    .line 2837
    :cond_95
    new-instance v6, Landroid/app/ServiceStartArgs;

    iget-boolean v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v6, v7, v8, v5, v4}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    goto/16 :goto_12

    .line 2840
    :cond_a5
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2841
    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 2842
    const/4 p3, 0x0

    .line 2844
    :try_start_af
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1, p2}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_b6
    .catch Landroid/os/TransactionTooLargeException; {:try_start_af .. :try_end_b6} :catch_c5
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b6} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_b7

    goto :goto_cb

    .line 2855
    :catch_b7
    move-exception p2

    move-object p3, p2

    .line 2856
    const-string p2, "Unexpected exception"

    invoke-static {v1, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2857
    goto :goto_cc

    .line 2850
    :catch_bf
    move-exception p2

    move-object p3, p2

    .line 2853
    invoke-static {v1, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2854
    goto :goto_cb

    .line 2845
    :catch_c5
    move-exception p2

    move-object p3, p2

    .line 2848
    invoke-static {v1, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2849
    nop

    .line 2858
    :goto_cb
    nop

    .line 2860
    :goto_cc
    if-eqz p3, :cond_e9

    .line 2862
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 2863
    nop

    :goto_d5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_e1

    .line 2864
    invoke-direct {p0, p1, p2, p2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2863
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 2866
    :cond_e1
    instance-of p1, p3, Landroid/os/TransactionTooLargeException;

    if-nez p1, :cond_e6

    goto :goto_e9

    .line 2867
    :cond_e6
    check-cast p3, Landroid/os/TransactionTooLargeException;

    throw p3

    .line 2870
    :cond_e9
    :goto_e9
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 9

    .line 3299
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3300
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_b7

    .line 3301
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_6b

    .line 3304
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3305
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3306
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 3309
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_55

    .line 3310
    :cond_30
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v0, :cond_55

    .line 3312
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3d
    if-ltz v0, :cond_55

    .line 3313
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_52

    .line 3314
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3315
    goto :goto_55

    .line 3312
    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 3319
    :cond_55
    :goto_55
    if-eqz p2, :cond_61

    .line 3322
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3323
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 3325
    :cond_61
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3327
    :cond_6b
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3328
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v0, 0x0

    if-eqz p2, :cond_91

    .line 3329
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p2

    .line 3330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3331
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3332
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3333
    if-eqz p3, :cond_91

    .line 3334
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {p2, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3335
    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3338
    :cond_91
    if-eqz p3, :cond_b7

    .line 3339
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_b4

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p2

    if-nez p2, :cond_b4

    .line 3340
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3341
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3342
    iget-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz p2, :cond_b4

    .line 3343
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3346
    :cond_b4
    invoke-virtual {p1, v0}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3349
    :cond_b7
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 3281
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_25

    .line 3282
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3284
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3285
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3286
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3287
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3289
    :cond_25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3290
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .registers 23

    .line 1256
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move-object/from16 v3, p3

    const/16 v4, 0x3c

    const/16 v5, 0x4c

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_2a9

    .line 1257
    if-eqz v3, :cond_2a0

    .line 1261
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    const-string/jumbo v10, "startForeground"

    const-string v11, "ActivityManager"

    if-eqz v9, :cond_88

    .line 1262
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v12, 0x44

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    .line 1266
    if-eqz v9, :cond_84

    const-string v12, "Instant app "

    if-eq v9, v7, :cond_68

    if-eq v9, v6, :cond_4a

    .line 1278
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v9, v14, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_85

    .line 1275
    :cond_4a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void

    .line 1268
    :cond_84
    nop

    .line 1282
    :goto_85
    move/from16 v12, p5

    goto :goto_af

    .line 1283
    :cond_88
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1c

    if-lt v9, v12, :cond_9f

    .line 1284
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v9, v14, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1289
    :cond_9f
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    .line 1292
    const/4 v10, -0x1

    move/from16 v12, p5

    if-ne v12, v10, :cond_ab

    .line 1293
    move v12, v9

    .line 1297
    :cond_ab
    and-int v10, v12, v9

    if-ne v10, v12, :cond_262

    .line 1305
    :goto_af
    nop

    .line 1306
    nop

    .line 1307
    iget-boolean v9, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v9, :cond_c6

    .line 1311
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1312
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1313
    nop

    .line 1314
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x42

    invoke-virtual {v9, v10, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    move v9, v7

    move v10, v9

    goto :goto_c8

    .line 1307
    :cond_c6
    move v9, v8

    move v10, v9

    .line 1319
    :goto_c8
    nop

    .line 1320
    :try_start_c9
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v5, v14, v15}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v13

    .line 1322
    if-eqz v13, :cond_100

    if-eq v13, v7, :cond_e7

    const/4 v14, 0x3

    if-ne v13, v14, :cond_df

    goto :goto_100

    .line 1334
    :cond_df
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Foreground not allowed as per app op"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_e7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    nop

    .line 1332
    move v13, v7

    goto :goto_101

    .line 1326
    :cond_100
    :goto_100
    move v13, v8

    .line 1339
    :goto_101
    if-nez v13, :cond_135

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1340
    invoke-direct {v1, v14}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v14

    if-nez v14, :cond_135

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1341
    invoke-direct {v1, v14, v15}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_135

    .line 1342
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v11, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1348
    move v13, v7

    .line 1355
    :cond_135
    if-nez v13, :cond_206

    .line 1356
    iget v11, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v11, v0, :cond_140

    .line 1357
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1358
    iput v0, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1360
    :cond_140
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 1361
    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1362
    iput v12, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1363
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_1e8

    .line 1364
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_1a4

    .line 1366
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1367
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1368
    if-nez v3, :cond_19f

    .line 1369
    new-instance v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v3}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    .line 1370
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1371
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1372
    iget-boolean v11, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1373
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_18a

    .line 1374
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1375
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    if-gt v11, v6, :cond_185

    move v11, v7

    goto :goto_186

    :cond_185
    move v11, v8

    :goto_186
    iput-boolean v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1378
    :cond_18a
    nop

    .line 1379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v11, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1380
    iget-object v11, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-wide/16 v11, 0x0

    invoke-direct {v1, v0, v11, v12}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1383
    :cond_19f
    iget v0, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v0, v7

    iput v0, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1385
    :cond_1a4
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1386
    if-nez v10, :cond_1bc

    .line 1387
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_1bb

    .line 1389
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1390
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-wide v11, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1389
    invoke-virtual {v0, v7, v3, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1392
    :cond_1bb
    goto :goto_1bd

    .line 1393
    :cond_1bc
    move v10, v8

    .line 1395
    :goto_1bd
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1396
    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v12

    const/16 v13, 0x4c

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    .line 1395
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 1399
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v4, v0, v3, v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1402
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1404
    :cond_1e8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1405
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1f4

    .line 1406
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1408
    :cond_1f4
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1409
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_206
    .catchall {:try_start_c9 .. :try_end_206} :catchall_234

    .line 1417
    :cond_206
    if-eqz v10, :cond_21b

    .line 1420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1421
    if-eqz v0, :cond_21b

    .line 1422
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v8, v3, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1426
    :cond_21b
    if-eqz v9, :cond_232

    .line 1429
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1430
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1429
    invoke-virtual {v0, v1, v5, v3, v2}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1434
    :cond_232
    goto/16 :goto_324

    .line 1417
    :catchall_234
    move-exception v0

    if-eqz v10, :cond_24a

    .line 1420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 1421
    if-eqz v3, :cond_24a

    .line 1422
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v3, v8, v4, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1426
    :cond_24a
    if-eqz v9, :cond_261

    .line 1429
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1430
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1429
    invoke-virtual {v3, v1, v5, v4, v2}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    :cond_261
    throw v0

    .line 1298
    :cond_262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foregroundServiceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [Ljava/lang/Object;

    .line 1299
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [Ljava/lang/Object;

    .line 1301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in service element of manifest file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :cond_2a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_2a9
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_305

    .line 1436
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1437
    if-eqz v0, :cond_2b9

    .line 1438
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1440
    :cond_2b9
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1442
    if-eqz v0, :cond_2ce

    .line 1443
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1446
    :cond_2ce
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1447
    invoke-static {v9}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1446
    invoke-virtual {v0, v9, v5, v10, v11}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1449
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1452
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1453
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_305

    .line 1454
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4, v8, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1455
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1458
    :cond_305
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_311

    .line 1459
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1460
    iput v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1461
    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_324

    .line 1462
    :cond_311
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_324

    .line 1463
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 1464
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_324

    .line 1465
    iput v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1466
    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1470
    :cond_324
    :goto_324
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 733
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_8

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 739
    return-void

    .line 741
    :cond_8
    const/16 v0, 0x63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 742
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 741
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 744
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 745
    :try_start_25
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 746
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_49

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 748
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_43

    .line 749
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 749
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 752
    :cond_43
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 754
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 755
    return-void

    .line 746
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 8

    .line 2489
    if-nez p3, :cond_c

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_c

    .line 2490
    const/4 p1, 0x0

    return p1

    .line 2495
    :cond_c
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    .line 2496
    if-nez p3, :cond_1a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v0, :cond_1d

    .line 2497
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 2499
    :cond_1d
    if-eqz p3, :cond_22

    .line 2500
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2502
    :cond_22
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2503
    const/4 p1, 0x1

    return p1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .registers 13

    .line 1536
    const/4 v0, 0x0

    if-eqz p2, :cond_14

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_14

    .line 1537
    iget-object p2, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p2, p2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    if-nez p2, :cond_14

    .line 1540
    return v0

    .line 1544
    :cond_14
    nop

    .line 1545
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    move v2, v0

    :goto_1e
    if-ltz p2, :cond_6d

    if-nez v2, :cond_6d

    .line 1546
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1547
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1548
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_33
    if-ltz v4, :cond_6a

    if-nez v2, :cond_6a

    .line 1549
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1550
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_42
    if-ltz v6, :cond_67

    .line 1551
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 1552
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_64

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_57

    .line 1554
    goto :goto_64

    .line 1556
    :cond_57
    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1557
    nop

    .line 1558
    move v2, v1

    goto :goto_67

    .line 1550
    :cond_64
    :goto_64
    add-int/lit8 v6, v6, -0x1

    goto :goto_42

    .line 1548
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .line 1545
    :cond_6a
    add-int/lit8 p2, p2, -0x1

    goto :goto_1e

    .line 1563
    :cond_6d
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result p2

    if-eq v2, p2, :cond_7f

    .line 1564
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setHasClientActivities(Z)V

    .line 1565
    if-eqz p3, :cond_7e

    .line 1566
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v2, p3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1568
    :cond_7e
    return v1

    .line 1570
    :cond_7f
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 9

    .line 1494
    nop

    .line 1495
    nop

    .line 1496
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ltz v0, :cond_27

    .line 1497
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1498
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_1e

    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v5, :cond_24

    .line 1499
    :cond_1e
    nop

    .line 1500
    iget v2, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v2, v3

    move v3, v2

    move v2, v1

    .line 1496
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1503
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 1504
    return-void
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1508
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_1f

    .line 1509
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1510
    iget-boolean v2, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v2, :cond_1c

    .line 1511
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1512
    goto :goto_1f

    .line 1508
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1515
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3353
    nop

    .line 3355
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7b

    .line 3356
    const/4 v0, 0x0

    .line 3358
    move-object v3, v0

    move v0, v1

    move v2, v0

    :goto_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5f

    .line 3359
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_60

    .line 3360
    :try_start_1e
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    if-eq p1, v3, :cond_34

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v6, :cond_5a

    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3361
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3362
    goto :goto_5a

    .line 3365
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3366
    add-int/lit8 v0, v0, -0x1

    .line 3367
    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v2, v6, v7, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3369
    iget-boolean v2, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 3370
    nop

    .line 3371
    invoke-direct {p0, v4, v1, v1}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_59

    .line 3376
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_59} :catch_5d

    .line 3358
    :cond_59
    move v2, v5

    :cond_5a
    :goto_5a
    add-int/2addr v0, v5

    move-object v3, v4

    goto :goto_e

    .line 3379
    :catch_5d
    move-exception p1

    goto :goto_62

    .line 3383
    :cond_5f
    goto :goto_7c

    .line 3379
    :catch_60
    move-exception p1

    move-object v4, v3

    .line 3380
    :goto_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in new application when starting service "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3382
    throw p1

    .line 3355
    :cond_7b
    move v2, v1

    .line 3389
    :goto_7c
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_bf

    .line 3391
    nop

    :goto_85
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_bf

    .line 3392
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3393
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_aa

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_bc

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3394
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 3395
    goto :goto_bc

    .line 3397
    :cond_aa
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3398
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3391
    :cond_bc
    :goto_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 3401
    :cond_bf
    return v2
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 1580
    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 1581
    const-string v3, " (pid="

    if-eqz v14, :cond_3dc

    .line 1588
    nop

    .line 1589
    const/4 v4, 0x0

    const-string v15, "ActivityManager"

    const/4 v12, 0x0

    if-eqz v1, :cond_3a

    .line 1590
    iget-object v5, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v5

    .line 1591
    if-nez v5, :cond_38

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding with unknown activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return v12

    .line 1591
    :cond_38
    move-object v11, v5

    goto :goto_3b

    .line 1589
    :cond_3a
    move-object v11, v4

    .line 1597
    :goto_3b
    nop

    .line 1598
    nop

    .line 1599
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    const/4 v10, 0x1

    if-ne v1, v5, :cond_48

    move v1, v10

    goto :goto_49

    :cond_48
    move v1, v12

    .line 1601
    :goto_49
    if-eqz v1, :cond_76

    .line 1605
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setDefusable(Z)V

    .line 1606
    const-string v4, "android.intent.extra.client_intent"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1607
    if-eqz v4, :cond_70

    .line 1608
    const-string v5, "android.intent.extra.client_label"

    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1609
    if-eqz v5, :cond_6a

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    move-object v9, v2

    move-object/from16 v17, v4

    move/from16 v16, v5

    goto :goto_7b

    .line 1609
    :cond_6a
    move-object v9, v2

    move-object/from16 v17, v4

    move/from16 v16, v5

    goto :goto_7b

    .line 1607
    :cond_70
    move-object v9, v2

    move-object/from16 v17, v4

    move/from16 v16, v12

    goto :goto_7b

    .line 1601
    :cond_76
    move-object v9, v2

    move-object/from16 v17, v4

    move/from16 v16, v12

    .line 1618
    :goto_7b
    const/high16 v2, 0x8000000

    and-int v18, p6, v2

    if-eqz v18, :cond_8a

    .line 1619
    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v5, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_8a
    const/high16 v2, 0x80000

    and-int v2, p6, v2

    if-eqz v2, :cond_b6

    if-eqz v1, :cond_93

    goto :goto_b6

    .line 1624
    :cond_93
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

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :cond_b6
    :goto_b6
    const/high16 v19, 0x1000000

    and-int v2, p6, v19

    const-string v4, "Non-system caller "

    if-eqz v2, :cond_e8

    if-eqz v1, :cond_c1

    goto :goto_e8

    .line 1629
    :cond_c1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1634
    :cond_e8
    :goto_e8
    const/high16 v2, 0x400000

    and-int v2, p6, v2

    if-eqz v2, :cond_118

    if-eqz v1, :cond_f1

    goto :goto_118

    .line 1635
    :cond_f1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1640
    :cond_118
    :goto_118
    const/high16 v0, 0x100000

    and-int v20, p6, v0

    if-eqz v20, :cond_127

    .line 1641
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v3, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_127
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v0, :cond_12d

    move v8, v10

    goto :goto_12e

    :cond_12d
    move v8, v12

    .line 1647
    :goto_12e
    const/high16 v0, -0x80000000

    and-int v0, p6, v0

    if-eqz v0, :cond_136

    move v0, v10

    goto :goto_137

    :cond_136
    move v0, v12

    .line 1648
    :goto_137
    if-eqz v2, :cond_13c

    move/from16 v21, v10

    goto :goto_13e

    :cond_13c
    move/from16 v21, v12

    .line 1650
    :goto_13e
    nop

    .line 1652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v22, 0x1

    .line 1651
    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move/from16 p7, v8

    move/from16 v8, p9

    move-object/from16 p1, v9

    move/from16 v9, v22

    move/from16 v10, p7

    move-object/from16 p2, v11

    move v11, v0

    move v0, v12

    move/from16 v12, v21

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 1654
    if-nez v1, :cond_169

    .line 1655
    return v0

    .line 1657
    :cond_169
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_16f

    .line 1658
    const/4 v0, -0x1

    return v0

    .line 1660
    :cond_16f
    iget-object v10, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 1662
    nop

    .line 1668
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 1671
    nop

    .line 1674
    move/from16 v12, p7

    if-nez v12, :cond_1ae

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Binding to a service in package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires a permissions review"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return v0

    .line 1680
    :cond_1ae
    nop

    .line 1681
    nop

    .line 1683
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v8, Lcom/android/server/am/ActiveServices$3;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v4, p1

    move v5, v12

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v7, v8}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1718
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1719
    const/high16 v2, 0x18800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1722
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1723
    const-string v2, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1730
    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ActiveServices$4;

    move/from16 v4, p9

    invoke-direct {v3, v13, v1, v4}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v11, 0x1

    goto :goto_1ee

    .line 1668
    :cond_1eb
    move/from16 v12, p7

    move v11, v0

    .line 1738
    :goto_1ee
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 1741
    :try_start_1f2
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v13, v10, v1, v0}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 1746
    and-int/lit8 v24, p6, 0x1

    if-eqz v24, :cond_222

    .line 1747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1748
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v1

    if-nez v1, :cond_220

    .line 1750
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    .line 1751
    if-eqz v1, :cond_21e

    .line 1752
    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-wide v3, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_223

    .line 1751
    :cond_21e
    const/4 v9, 0x1

    goto :goto_223

    .line 1748
    :cond_220
    const/4 v9, 0x1

    goto :goto_223

    .line 1746
    :cond_222
    const/4 v9, 0x1

    .line 1758
    :goto_223
    const/high16 v1, 0x200000

    and-int v1, p6, v1

    if-eqz v1, :cond_232

    .line 1759
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V

    .line 1762
    :cond_232
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1763
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v28

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v8, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1762
    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v29, v4

    move-wide/from16 v30, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-virtual/range {v25 .. v33}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 1767
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1768
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget v4, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 1767
    move-object/from16 v8, p1

    invoke-virtual {v1, v2, v8, v3, v4}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1770
    invoke-virtual {v10, v8, v14}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v7

    .line 1771
    new-instance v6, Lcom/android/server/am/ConnectionRecord;

    iget v5, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move v3, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v23, v15

    move v15, v3

    move-object/from16 v3, p5

    move-object/from16 v25, v4

    move/from16 v4, p6

    move/from16 v26, v5

    move/from16 v5, v16

    move-object v15, v6

    move-object/from16 v6, v17

    move-object/from16 v16, v14

    move-object v14, v7

    move/from16 v7, v26

    move-object/from16 v17, v8

    move-object/from16 v8, v25

    move/from16 p9, v11

    move v11, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1776
    invoke-virtual {v10, v0, v15}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 1777
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1778
    move-object/from16 v4, p2

    if-eqz v4, :cond_2b3

    .line 1779
    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V

    .line 1781
    :cond_2b3
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-virtual {v15}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 1783
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2c7

    .line 1784
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 1786
    :cond_2c7
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int v1, v1, v19

    if-eqz v1, :cond_2cf

    .line 1787
    iput-boolean v11, v10, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 1789
    :cond_2cf
    if-eqz v20, :cond_2d4

    .line 1790
    invoke-virtual {v10, v11}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V

    .line 1792
    :cond_2d4
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2dd

    .line 1793
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v13, v1, v15, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1795
    :cond_2dd
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1796
    if-nez v1, :cond_2f1

    .line 1797
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    iget-object v2, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    :cond_2f1
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    if-eqz v24, :cond_319

    .line 1803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1804
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v10

    move/from16 p3, v0

    move/from16 p4, v12

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-direct/range {p1 .. p6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_311
    .catchall {:try_start_1f2 .. :try_end_311} :catchall_3d7

    if-eqz v0, :cond_319

    .line 1806
    nop

    .line 1855
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1806
    const/4 v0, 0x0

    return v0

    .line 1810
    :cond_319
    :try_start_319
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_356

    .line 1811
    if-eqz v18, :cond_323

    .line 1812
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1814
    :cond_323
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_32b

    .line 1815
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1818
    :cond_32b
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1819
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_33d

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-nez v2, :cond_346

    .line 1820
    :cond_33d
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_348

    if-eqz v18, :cond_348

    :cond_346
    move v2, v11

    goto :goto_349

    :cond_348
    const/4 v2, 0x0

    :goto_349
    iget-object v3, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1818
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1823
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_bindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1831
    :cond_356
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3bd

    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_35e
    .catchall {:try_start_319 .. :try_end_35e} :catchall_3d7

    if-eqz v0, :cond_3bd

    .line 1835
    :try_start_360
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v2, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v2, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_36c} :catch_36d
    .catchall {:try_start_360 .. :try_end_36c} :catchall_3d7

    .line 1840
    goto :goto_3a7

    .line 1836
    :catch_36d
    move-exception v0

    .line 1837
    :try_start_36e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 1838
    invoke-interface {v2}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1837
    move-object/from16 v2, v23

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1845
    :goto_3a7
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v11, :cond_3c9

    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v0, :cond_3c9

    .line 1846
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v13, v10, v0, v12, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_3c9

    .line 1848
    :cond_3bd
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_3c9

    .line 1849
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v1, 0x0

    invoke-direct {v13, v10, v0, v12, v1}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 1852
    :cond_3c9
    :goto_3c9
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3d2
    .catchall {:try_start_36e .. :try_end_3d2} :catchall_3d7

    .line 1855
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    nop

    .line 1858
    return v11

    .line 1855
    :catchall_3d7
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1582
    :cond_3dc
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when binding service "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZ)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZ)Z"
        }
    .end annotation

    .line 3455
    nop

    .line 3457
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 3458
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3461
    :cond_8
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_43

    .line 3462
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_14
    if-ltz p3, :cond_5f

    .line 3463
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 3464
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v8, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 3463
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 3465
    if-nez p5, :cond_2f

    if-eqz v2, :cond_2f

    .line 3466
    return v0

    .line 3468
    :cond_2f
    if-eqz p5, :cond_40

    if-nez p2, :cond_40

    .line 3469
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3462
    :cond_40
    add-int/lit8 p3, p3, -0x1

    goto :goto_14

    .line 3473
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3474
    if-eqz v1, :cond_58

    .line 3475
    iget-object v8, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 3476
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v2

    .line 3479
    :cond_58
    if-eqz p5, :cond_5f

    if-nez p2, :cond_5f

    .line 3480
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3484
    :cond_5f
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_7d

    .line 3485
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_68
    if-ltz p1, :cond_78

    .line 3486
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3485
    add-int/lit8 p1, p1, -0x1

    goto :goto_68

    .line 3488
    :cond_78
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3491
    :cond_7d
    return v2
.end method

.method cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 15

    .line 3511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3512
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 3513
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_29

    .line 3514
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3515
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3516
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3513
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 3521
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2e
    if-ltz p1, :cond_89

    .line 3522
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ServiceRecord;

    .line 3523
    iget-boolean v1, p2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_86

    .line 3524
    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_62

    .line 3525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": remove task"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_86

    .line 3528
    :cond_62
    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v5, 0x1

    .line 3529
    invoke-virtual {p2}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 3528
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3530
    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_86

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_86

    .line 3534
    const/4 v1, 0x0

    :try_start_81
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_84
    .catch Landroid/os/TransactionTooLargeException; {:try_start_81 .. :try_end_84} :catch_85

    .line 3537
    goto :goto_86

    .line 3535
    :catch_85
    move-exception p2

    .line 3521
    :cond_86
    :goto_86
    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    .line 3542
    :cond_89
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 19

    .line 4433
    move-object v0, p0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4435
    invoke-static {p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 4437
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4438
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    .line 4440
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1b
    if-ge v6, v4, :cond_48

    aget v7, v3, v6

    .line 4441
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4442
    if-nez v7, :cond_2a

    .line 4443
    goto :goto_45

    .line 4445
    :cond_2a
    iget-object v7, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4446
    move v9, v5

    :goto_2d
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_45

    .line 4447
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    .line 4449
    invoke-interface {v1, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 4450
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4446
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 4440
    :cond_45
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 4454
    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4456
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_53

    .line 4457
    return v5

    .line 4461
    :cond_53
    sget-object v1, Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;->INSTANCE:Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4463
    nop

    .line 4464
    const/4 v9, 0x1

    move v10, v5

    :goto_5f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_82

    .line 4465
    if-eqz v5, :cond_6a

    .line 4466
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4468
    :cond_6a
    nop

    .line 4469
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    const-string v2, ""

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 4464
    add-int/lit8 v10, v10, 0x1

    move v5, v9

    goto :goto_5f

    .line 4471
    :cond_82
    return v9

    .line 4454
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method forceStopPackageLocked(Ljava/lang/String;I)V
    .registers 6

    .line 3495
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3496
    if-eqz p2, :cond_3f

    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 3497
    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_36

    .line 3498
    iget-object v2, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 3499
    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3500
    iget-object v2, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3501
    iput-boolean v1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 3497
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 3504
    :cond_36
    iget-boolean p1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz p1, :cond_3f

    .line 3505
    const-wide/16 v0, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 3508
    :cond_3f
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .registers 13

    .line 959
    nop

    .line 960
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 961
    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 964
    goto :goto_58

    .line 966
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v0, :cond_18

    goto :goto_2a

    .line 984
    :cond_18
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v3, v5

    .line 986
    cmp-long p2, p2, v3

    if-ltz p2, :cond_26

    .line 992
    goto :goto_58

    .line 995
    :cond_26
    iput-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move v1, v2

    goto :goto_58

    .line 967
    :cond_2a
    :goto_2a
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 968
    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v7, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3b

    .line 969
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_41

    .line 970
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_41
    add-long/2addr v3, v5

    .line 971
    cmp-long v0, p2, v3

    if-ltz v0, :cond_47

    .line 975
    goto :goto_57

    .line 978
    :cond_47
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr p2, v0

    .line 979
    cmp-long v0, p2, v3

    if-lez v0, :cond_53

    goto :goto_54

    :cond_53
    move-wide p2, v3

    :goto_54
    iput-wide p2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move v1, v2

    .line 983
    :goto_57
    nop

    .line 1000
    :goto_58
    return v1
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .registers 10

    .line 1223
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1224
    if-eqz v0, :cond_4d

    .line 1225
    nop

    .line 1226
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ltz v1, :cond_46

    .line 1227
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1228
    iget v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v7, p1, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v6, v7, :cond_43

    .line 1229
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_3c

    .line 1230
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v6, :cond_39

    .line 1231
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1232
    move v4, v2

    .line 1234
    :cond_39
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_43

    .line 1235
    :cond_3c
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v6, :cond_43

    .line 1236
    iput-boolean v3, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1237
    move v4, v2

    .line 1226
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 1241
    :cond_46
    if-eqz v4, :cond_4d

    .line 1242
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1245
    :cond_4d
    return-void
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .registers 6

    .line 942
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 944
    nop

    .line 946
    :try_start_9
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    .line 947
    if-eqz p1, :cond_12

    .line 948
    iget p1, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    goto :goto_13

    .line 947
    :cond_12
    const/4 p1, 0x0

    .line 951
    :goto_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    nop

    .line 953
    return p1

    .line 951
    :catchall_18
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 6

    .line 3839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3840
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    .line 3841
    if-eqz p1, :cond_40

    .line 3842
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 3843
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_40

    .line 3844
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3845
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 3846
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    iget-object v3, v3, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3a

    .line 3847
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ConnectionRecord;

    iget-object p1, p1, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object p1

    .line 3845
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 3843
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 3852
    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3787
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3792
    const/4 v2, 0x0

    if-eqz p5, :cond_6b

    .line 3793
    :try_start_c
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p3

    .line 3794
    move p4, v2

    :goto_15
    array-length p5, p3

    if-ge p4, p5, :cond_44

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p5, p1, :cond_44

    .line 3795
    aget p5, p3, p4

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object p5

    .line 3796
    move v3, v2

    :goto_25
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_41

    .line 3797
    invoke-virtual {p5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3798
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3796
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3794
    :cond_41
    add-int/lit8 p4, p4, 0x1

    goto :goto_15

    .line 3802
    :cond_44
    nop

    :goto_45
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_6a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p3, p1, :cond_6a

    .line 3803
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    .line 3804
    nop

    .line 3805
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object p4

    .line 3806
    iget-wide v3, p3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v3, p4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 3807
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3802
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 3809
    :cond_6a
    goto :goto_d2

    .line 3810
    :cond_6b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    .line 3811
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 3812
    move v4, v2

    :goto_74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_9c

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_9c

    .line 3813
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3815
    if-nez p4, :cond_92

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_99

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, p3, :cond_99

    .line 3816
    :cond_92
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3812
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 3820
    :cond_9c
    nop

    :goto_9d
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p1, :cond_d2

    .line 3821
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3822
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v4, p5, :cond_cf

    if-nez p4, :cond_c3

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_cf

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p3, :cond_cf

    .line 3824
    :cond_c3
    nop

    .line 3825
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 3826
    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 3827
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cf
    .catchall {:try_start_c .. :try_end_cf} :catchall_d7

    .line 3820
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 3832
    :cond_d2
    :goto_d2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3833
    nop

    .line 3835
    return-object p2

    .line 3832
    :catchall_d7
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 3

    .line 379
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    return-object p1
.end method

.method getServicesLocked(I)Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object p1
.end method

.method hasBackgroundServicesLocked(I)Z
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 384
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt p1, v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V
    .registers 13

    .line 839
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 841
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string v6, "Bad notification for startForeground"

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 843
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 844
    return-void

    .line 843
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 14

    .line 3575
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_19

    .line 3576
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 3577
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 3575
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3579
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3580
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3582
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 3585
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_2b
    if-ltz v3, :cond_d6

    .line 3586
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3587
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    monitor-enter v5

    .line 3588
    :try_start_3c
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3589
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_d3

    .line 3590
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, p1, :cond_5e

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5e

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 3591
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3592
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3594
    :cond_5e
    invoke-virtual {v4, v2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3595
    iput-object v2, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3596
    iput v0, v4, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3597
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 3598
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3602
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 3603
    sub-int/2addr v5, v1

    :goto_74
    if-ltz v5, :cond_cf

    .line 3604
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    .line 3607
    iput-object v2, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 3608
    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3613
    iget-object v7, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_8d
    if-ltz v7, :cond_cc

    .line 3614
    iget-object v8, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3616
    iget-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v9, :cond_c9

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v8, :cond_a0

    .line 3617
    goto :goto_c9

    .line 3622
    :cond_a0
    iget-object v8, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    .line 3623
    nop

    .line 3624
    iget-object v9, v8, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    sub-int/2addr v9, v1

    :goto_b0
    if-ltz v9, :cond_c6

    .line 3625
    iget-object v10, v8, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 3626
    iget v10, v10, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v10, v10, 0x31

    if-ne v10, v1, :cond_c3

    .line 3628
    nop

    .line 3629
    move v8, v1

    goto :goto_c7

    .line 3624
    :cond_c3
    add-int/lit8 v9, v9, -0x1

    goto :goto_b0

    :cond_c6
    move v8, v0

    .line 3632
    :goto_c7
    if-nez v8, :cond_c9

    .line 3613
    :cond_c9
    :goto_c9
    add-int/lit8 v7, v7, -0x1

    goto :goto_8d

    .line 3603
    :cond_cc
    add-int/lit8 v5, v5, -0x1

    goto :goto_74

    .line 3585
    :cond_cf
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2b

    .line 3589
    :catchall_d3
    move-exception p1

    :try_start_d4
    monitor-exit v5
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw p1

    .line 3646
    :cond_d6
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    .line 3649
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_e3
    if-ltz v3, :cond_1e1

    .line 3650
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3654
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_fb

    .line 3655
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3656
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3661
    :cond_fb
    iget-object v5, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3662
    if-eq v5, v4, :cond_131

    .line 3663
    if-eqz v5, :cond_1dd

    .line 3664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in process "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not same as in map: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 3672
    :cond_131
    if-eqz p2, :cond_194

    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_194

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_194

    .line 3675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service crashed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times, stopping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const/16 v5, 0x7552

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3678
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    iget v7, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3677
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3679
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_1dd

    .line 3680
    :cond_194
    if-eqz p2, :cond_1da

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v6, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3681
    invoke-virtual {v5, v6, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v5

    if-nez v5, :cond_1a3

    goto :goto_1da

    .line 3684
    :cond_1a3
    invoke-direct {p0, v4, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v5

    .line 3689
    iget-boolean v6, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v6, :cond_1dd

    iget-boolean v6, v4, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v6, :cond_1b1

    if-eqz v5, :cond_1dd

    .line 3690
    :cond_1b1
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1dd

    .line 3691
    iput-boolean v0, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 3692
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v5, :cond_1d0

    .line 3693
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 3694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3693
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3696
    :cond_1d0
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v5

    if-nez v5, :cond_1dd

    .line 3698
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_1dd

    .line 3682
    :cond_1da
    :goto_1da
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3649
    :cond_1dd
    :goto_1dd
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_e3

    .line 3705
    :cond_1e1
    if-nez p2, :cond_24c

    .line 3706
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 3707
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 3710
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_1f2
    if-ltz p2, :cond_21d

    .line 3711
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3712
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_21a

    .line 3714
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3715
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3710
    :cond_21a
    add-int/lit8 p2, p2, -0x1

    goto :goto_1f2

    .line 3718
    :cond_21d
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_224
    if-ltz p2, :cond_24c

    .line 3719
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3720
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_249

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_249

    .line 3722
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3718
    :cond_249
    add-int/lit8 p2, p2, -0x1

    goto :goto_224

    .line 3728
    :cond_24c
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 3729
    :goto_252
    if-lez p2, :cond_26b

    .line 3730
    add-int/lit8 p2, p2, -0x1

    .line 3731
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3732
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_26a

    .line 3733
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 3734
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3737
    :cond_26a
    goto :goto_252

    .line 3739
    :cond_26b
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 3740
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 8

    .line 3743
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 3745
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 3746
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_13

    .line 3747
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 3749
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 3750
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 3751
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 3752
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 3753
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 3754
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 3755
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 3756
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 3757
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_45

    .line 3758
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3760
    :cond_45
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_4f

    .line 3761
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3763
    :cond_4f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_61

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_61

    .line 3764
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3766
    :cond_61
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_73

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 3767
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3770
    :cond_73
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 3771
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7d
    if-ltz v1, :cond_ab

    .line 3772
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3773
    const/4 v3, 0x0

    :goto_86
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 3774
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 3775
    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_a5

    .line 3776
    iget-object p1, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p1, p1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 3777
    iget p1, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput p1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 3778
    return-object v0

    .line 3773
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 3771
    :cond_a8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    .line 3782
    :cond_ab
    return-object v0
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .registers 16

    .line 4398
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
    .registers 16

    .line 847
    nop

    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 849
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 847
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object p1

    .line 851
    nop

    .line 852
    if-eqz p1, :cond_65

    .line 854
    iget-object p2, p1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz p2, :cond_34

    .line 861
    iget-object p2, p1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/IntentBindRecord;

    .line 862
    if-eqz p1, :cond_65

    .line 863
    iget-object p1, p1, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_66

    .line 855
    :cond_34
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Accessing service from pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 867
    :cond_65
    const/4 p1, 0x0

    :goto_66
    return-object p1
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 9

    .line 2468
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2469
    return-void

    .line 2471
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting service that is not needed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return-void

    .line 2481
    :cond_27
    :try_start_27
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
    :try_end_3a
    .catch Landroid/os/TransactionTooLargeException; {:try_start_27 .. :try_end_3a} :catch_3b

    .line 2484
    goto :goto_3c

    .line 2482
    :catch_3b
    move-exception p1

    .line 2485
    :goto_3c
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 3405
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 3406
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3407
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_23

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3408
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_23
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_4a

    .line 3410
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

    .line 3411
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3412
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3413
    add-int/lit8 v0, v0, -0x1

    .line 3414
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3405
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3417
    :cond_4d
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 16

    .line 1862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1866
    if-eqz p1, :cond_a3

    .line 1867
    :try_start_6
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1869
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/IntentBindRecord;

    .line 1870
    const/4 v3, 0x0

    if-eqz p2, :cond_94

    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v4, :cond_94

    .line 1871
    iput-object p3, p2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1872
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1873
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 1874
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p2

    .line 1875
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2a
    if-ltz v5, :cond_94

    .line 1876
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1877
    move v6, v3

    :goto_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_91

    .line 1878
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 1879
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v8, v8, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v8}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_9e

    if-nez v8, :cond_4c

    .line 1886
    goto :goto_8e

    .line 1890
    :cond_4c
    :try_start_4c
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v8, v9, p3, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_54
    .catchall {:try_start_4c .. :try_end_53} :catchall_9e

    .line 1895
    goto :goto_8e

    .line 1891
    :catch_54
    move-exception v8

    .line 1892
    :try_start_55
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 1893
    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1892
    invoke-static {v9, v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1877
    :goto_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 1875
    :cond_91
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a

    .line 1900
    :cond_94
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_9d
    .catchall {:try_start_55 .. :try_end_9d} :catchall_9e

    goto :goto_a3

    .line 1903
    :catchall_9e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_a3
    :goto_a3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1904
    nop

    .line 1905
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .registers 16

    .line 3102
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3103
    iget-object v1, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 3104
    iget-object v2, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 3105
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3106
    if-eqz v3, :cond_22

    .line 3107
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_22

    .line 3109
    invoke-virtual {v2, v0}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 3112
    :cond_22
    iget-object v3, v1, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3113
    invoke-virtual {p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3114
    iget-object v3, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v3, :cond_37

    iget-object v3, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eq v3, p3, :cond_37

    .line 3115
    iget-object p3, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    .line 3117
    :cond_37
    iget-object p3, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    if-eq p3, p2, :cond_78

    .line 3118
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3119
    iget p2, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4e

    .line 3120
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 3124
    :cond_4e
    iget p2, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 p3, 0x1000000

    and-int/2addr p2, p3

    if-eqz p2, :cond_65

    .line 3125
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    .line 3126
    iget-boolean p2, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-nez p2, :cond_65

    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_65

    .line 3127
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3131
    :cond_65
    iget p2, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 p3, 0x100000

    and-int/2addr p2, p3

    if-eqz p2, :cond_6f

    .line 3132
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateHasBindingWhitelistingBgActivityStarts()V

    .line 3134
    :cond_6f
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_78

    .line 3135
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3138
    :cond_78
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 3139
    if-eqz p2, :cond_90

    .line 3140
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3141
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_90

    .line 3142
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    :cond_90
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 3149
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-nez p2, :cond_ba

    .line 3150
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object p2, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object p3, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    :cond_ba
    iget-boolean p2, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez p2, :cond_16b

    .line 3156
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 p3, 0x0

    if-eqz p2, :cond_139

    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p2, :cond_139

    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object p2, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_139

    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean p2, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz p2, :cond_139

    .line 3159
    :try_start_d9
    const-string/jumbo p2, "unbind"

    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3160
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq p2, v0, :cond_fb

    iget p2, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 p2, p2, 0x20

    if-nez p2, :cond_fb

    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v0, 0xe

    if-gt p2, v0, :cond_fb

    .line 3165
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    invoke-virtual {p2, v0, p3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3167
    :cond_fb
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {p2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3169
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean p3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3172
    iget-object p2, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean p3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 3173
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_11c} :catch_11d

    .line 3177
    goto :goto_139

    .line 3174
    :catch_11d
    move-exception p2

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when unbinding service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3176
    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3182
    :cond_139
    :goto_139
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_148

    .line 3183
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3186
    :cond_148
    iget p1, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_16b

    .line 3187
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p1

    .line 3188
    if-nez p1, :cond_168

    .line 3189
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz p2, :cond_168

    .line 3190
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3190
    invoke-virtual {p2, p3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3194
    :cond_168
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3197
    :cond_16b
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 3966
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_11

    goto :goto_2a

    .line 3969
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3971
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3972
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3973
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3974
    return-void

    .line 3967
    :cond_2a
    :goto_2a
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 3955
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 3958
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3960
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3961
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3962
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz p1, :cond_24

    const-wide/16 v2, 0x4e20

    goto :goto_27

    :cond_24
    const-wide/32 v2, 0x30d40

    .line 3961
    :goto_27
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3963
    return-void

    .line 3956
    :cond_2b
    :goto_2b
    return-void
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .registers 9

    .line 3200
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3201
    const-string v1, "ActivityManager"

    if-eqz p1, :cond_b6

    .line 3202
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_60

    .line 3205
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 3206
    const/4 p2, 0x0

    if-eqz p4, :cond_55

    if-eq p4, v3, :cond_55

    if-eq p4, v2, :cond_49

    const/4 v1, 0x3

    if-eq p4, v1, :cond_39

    const/16 v1, 0x3e8

    if-ne p4, v1, :cond_22

    .line 3241
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3242
    goto :goto_5b

    .line 3245
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown service start result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3229
    :cond_39
    invoke-virtual {p1, p3, p2, p2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object p3

    .line 3230
    if-eqz p3, :cond_5b

    .line 3231
    iput p2, p3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3232
    iget v1, p3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v1, v3

    iput v1, p3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 3234
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5b

    .line 3217
    :cond_49
    invoke-virtual {p1, p3, p2, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3218
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v1

    if-ne v1, p3, :cond_5b

    .line 3221
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5b

    .line 3210
    :cond_55
    invoke-virtual {p1, p3, p2, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3212
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 3213
    nop

    .line 3248
    :cond_5b
    :goto_5b
    if-nez p4, :cond_ab

    .line 3249
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_ab

    .line 3251
    :cond_60
    if-ne p2, v2, :cond_ab

    .line 3255
    if-nez v0, :cond_87

    .line 3260
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_ab

    .line 3261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", app="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 3264
    :cond_87
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq p2, v3, :cond_ab

    .line 3265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but executeNesting="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3271
    :cond_ab
    :goto_ab
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 3272
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3273
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3274
    goto :goto_ce

    .line 3275
    :cond_b6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Done executing unknown service from pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3275
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :goto_ce
    return-void
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .registers 10

    .line 3949
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 3952
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 11

    .line 3907
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3908
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_f

    goto :goto_44

    .line 3912
    :cond_f
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3913
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3915
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3921
    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3922
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3923
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3925
    if-eqz v2, :cond_43

    .line 3926
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 3930
    :cond_43
    return-void

    .line 3909
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3923
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 16

    .line 3856
    nop

    .line 3857
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3858
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3860
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3862
    :cond_12
    :try_start_12
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_20

    goto/16 :goto_f7

    .line 3865
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3866
    nop

    .line 3867
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v3, :cond_2c

    const/16 v3, 0x4e20

    goto :goto_2f

    :cond_2c
    const v3, 0x30d40

    :goto_2f
    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 3868
    nop

    .line 3869
    const-wide/16 v3, 0x0

    .line 3870
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3c
    const/4 v6, 0x0

    if-ltz v5, :cond_5a

    .line 3871
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 3872
    iget-wide v8, v7, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v8, v8, v1

    if-gez v8, :cond_4f

    .line 3873
    nop

    .line 3874
    goto :goto_5b

    .line 3876
    :cond_4f
    iget-wide v8, v7, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v6, v8, v3

    if-lez v6, :cond_57

    .line 3877
    iget-wide v3, v7, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 3870
    :cond_57
    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    :cond_5a
    move-object v7, v6

    .line 3880
    :goto_5b
    if-eqz v7, :cond_c7

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 3881
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout executing service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3883
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 3884
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3885
    const-string v3, "    "

    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3886
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 3887
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 3888
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3889
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3891
    move-object v13, v6

    goto :goto_e7

    .line 3892
    :cond_c7
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3894
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3895
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v5, :cond_df

    .line 3896
    const-wide/16 v7, 0x4e20

    add-long/2addr v3, v7

    goto :goto_e3

    :cond_df
    const-wide/32 v7, 0x30d40

    add-long/2addr v3, v7

    .line 3895
    :goto_e3
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-object v13, v6

    .line 3898
    :goto_e7
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_12 .. :try_end_e8} :catchall_fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3900
    if-eqz v13, :cond_f6

    .line 3901
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 3903
    :cond_f6
    return-void

    .line 3863
    :cond_f7
    :goto_f7
    :try_start_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3898
    :catchall_fc
    move-exception p1

    :try_start_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .registers 16

    .line 923
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 926
    :try_start_8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 927
    if-eqz v4, :cond_16

    .line 928
    move-object v3, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 931
    :cond_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    nop

    .line 933
    return-void

    .line 931
    :catchall_1b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 696
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 697
    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 698
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-wide v3, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 700
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 701
    const/16 v2, 0x63

    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 702
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 701
    invoke-static {v2, v3, v4, v5, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 703
    iget-object v2, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    .line 704
    :try_start_33
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 705
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_85

    .line 706
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object p2

    .line 707
    if-eqz p2, :cond_50

    .line 708
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "!!"

    invoke-direct {p1, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 711
    :cond_50
    iget-boolean p2, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz p2, :cond_77

    if-eqz p5, :cond_77

    .line 712
    iget-object p2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_5f

    move v0, v1

    .line 713
    :cond_5f
    iget-object p2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p2, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr p4, v1

    iput-wide p4, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 722
    if-eqz v0, :cond_7e

    .line 723
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_7e

    .line 725
    :cond_77
    if-nez p4, :cond_7f

    iget-boolean p2, p3, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz p2, :cond_7e

    goto :goto_7f

    :cond_7e
    :goto_7e
    goto :goto_82

    .line 726
    :cond_7f
    :goto_7f
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 729
    :goto_82
    iget-object p1, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object p1

    .line 705
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p1
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;I)Landroid/content/ComponentName;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 409
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
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 421
    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v11, p7

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_49

    .line 422
    iget-object v1, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_22

    .line 429
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v0, :cond_1e

    move v0, v9

    goto :goto_1f

    :cond_1e
    move v0, v10

    .line 430
    :goto_1f
    move/from16 v16, v0

    goto :goto_4b

    .line 424
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_49
    move/from16 v16, v9

    .line 434
    :goto_4b
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    .line 437
    const/4 v8, 0x0

    if-nez v0, :cond_6d

    .line 438
    return-object v8

    .line 440
    :cond_6d
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_83

    .line 441
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_7a

    .line 442
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_7d

    :cond_7a
    const-string/jumbo v0, "private to package"

    :goto_7d
    const-string v2, "!"

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-object v1

    .line 445
    :cond_83
    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 447
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    const-string v10, "ActivityManager"

    if-nez v0, :cond_aa

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to start service with non-existent user! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v8

    .line 455
    :cond_aa
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v0

    const/4 v11, 0x1

    .line 460
    xor-int/2addr v0, v11

    .line 461
    if-eqz v0, :cond_c7

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v12, v0, v1}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 466
    move/from16 v17, v11

    goto :goto_c9

    .line 470
    :cond_c7
    const/16 v17, 0x0

    :goto_c9
    nop

    .line 471
    const-string v7, " pkg="

    const-string v6, " uid="

    const-string v5, " from pid="

    const-string v4, " to "

    if-eqz p6, :cond_130

    .line 472
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x4c

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 474
    if-eqz v0, :cond_f5

    if-eq v0, v11, :cond_f8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f5

    .line 490
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    const-string v2, "foreground not allowed as per app op"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 474
    :cond_f5
    move-object/from16 v3, p7

    goto :goto_12f

    .line 482
    :cond_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    nop

    .line 487
    nop

    .line 488
    move/from16 v18, v11

    const/4 v2, 0x0

    goto :goto_136

    .line 478
    :goto_12f
    goto :goto_132

    .line 471
    :cond_130
    move-object/from16 v3, p7

    .line 496
    :goto_132
    move/from16 v2, p6

    const/16 v18, 0x0

    :goto_136
    if-nez v17, :cond_144

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_13f

    if-nez v2, :cond_13f

    goto :goto_144

    :cond_13f
    move-object v8, v3

    move-object v7, v10

    move-object v10, v12

    goto/16 :goto_1e5

    .line 499
    :cond_144
    :goto_144
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v2

    move-object v2, v8

    move-object v8, v3

    move v3, v11

    move-object v11, v4

    move/from16 v4, p4

    move-object v12, v5

    move/from16 v5, v19

    move-object/from16 v22, v6

    move/from16 v6, v20

    move-object/from16 p3, v10

    move-object v10, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 501
    if-eqz v0, :cond_1df

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background start not allowed: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startFg?="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1dd

    if-eqz v18, :cond_1b0

    goto :goto_1dd

    .line 511
    :cond_1b0
    if-eqz v17, :cond_1b6

    .line 515
    if-eqz v2, :cond_1b6

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_1b6
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 525
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is in background uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 509
    :cond_1dd
    :goto_1dd
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_1df
    move-object/from16 v10, p0

    move-object/from16 v7, p3

    move/from16 v2, v21

    .line 533
    :goto_1e5
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1f1

    if-eqz v2, :cond_1f1

    .line 538
    const/4 v11, 0x0

    goto :goto_1f2

    .line 541
    :cond_1f1
    move v11, v2

    :goto_1f2
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    iget v6, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 541
    move/from16 v1, p5

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v12

    .line 550
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p7

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, v16

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z

    move-result v0

    if-nez v0, :cond_21c

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_21c
    const/4 v8, 0x0

    invoke-direct {v10, v9, v15, v8}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 560
    iput-boolean v8, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 561
    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 562
    iget-object v14, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v4, p2

    move-object v5, v12

    move-object v12, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    if-eqz v11, :cond_27e

    .line 567
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_25a

    .line 569
    iget-object v1, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 572
    :cond_25a
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x4c

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move/from16 p8, v5

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 576
    :cond_27e
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v10, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 577
    nop

    .line 578
    if-nez v16, :cond_2ec

    if-nez v11, :cond_2ec

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_2ec

    iget-object v1, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 579
    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-eqz v1, :cond_2ec

    .line 580
    iget-object v1, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_2ba

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_2b0

    goto :goto_2ba

    .line 609
    :cond_2b0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2ec

    .line 613
    const/4 v8, 0x1

    goto :goto_2ec

    .line 594
    :cond_2ba
    :goto_2ba
    iget-boolean v1, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_2c1

    .line 598
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 600
    :cond_2c1
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v10, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v2, :cond_2ea

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delaying start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 605
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 608
    :cond_2ea
    const/4 v1, 0x1

    move v8, v1

    .line 641
    :cond_2ec
    :goto_2ec
    if-eqz p9, :cond_2f1

    .line 642
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->whitelistBgActivityStartsOnServiceStart()V

    .line 645
    :cond_2f1
    move-object/from16 p3, p0

    move-object/from16 p4, v0

    move-object/from16 p5, p2

    move-object/from16 p6, v9

    move/from16 p7, v16

    move/from16 p8, v8

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v0

    .line 646
    return-object v0
.end method

.method stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .registers 13

    .line 202
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 203
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v1, :cond_3b

    .line 206
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 207
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v6, :cond_31

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 208
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 209
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_38

    .line 210
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 216
    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 217
    nop

    .line 221
    nop

    :goto_41
    if-ge v3, p1, :cond_55

    .line 222
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 226
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 228
    :cond_55
    return-void
.end method

.method stopInBackgroundLocked(I)V
    .registers 15

    .line 792
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 793
    nop

    .line 794
    if-eqz v0, :cond_b4

    .line 795
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_18
    if-ltz v1, :cond_98

    .line 796
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 797
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_95

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_95

    .line 798
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

    .line 801
    if-nez v2, :cond_49

    .line 802
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 804
    :cond_49
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 805
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 807
    const-string v6, "Stopping service due to app idle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 809
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget-wide v7, v3, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 810
    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 812
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 821
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 795
    :cond_95
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 826
    :cond_98
    if-eqz v2, :cond_b4

    .line 827
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_a0
    if-ltz p1, :cond_b4

    .line 828
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 829
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 830
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 831
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 827
    add-int/lit8 p1, p1, -0x1

    goto :goto_a0

    .line 835
    :cond_b4
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 18

    .line 762
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 763
    if-eqz v1, :cond_3a

    if-eqz v2, :cond_e

    move-object v3, p2

    goto :goto_3b

    .line 764
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when stopping service "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_3a
    move-object v3, p2

    .line 771
    :goto_3b
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 771
    move-object v1, p0

    move-object v2, p2

    move-object v3, v4

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_70

    .line 774
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_6e

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 777
    :try_start_5e
    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_69

    .line 779
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    nop

    .line 781
    const/4 v0, 0x1

    return v0

    .line 779
    :catchall_69
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 783
    :cond_6e
    const/4 v0, -0x1

    return v0

    .line 786
    :cond_70
    const/4 v0, 0x0

    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 8

    .line 874
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    .line 875
    const/4 p2, 0x0

    if-eqz p1, :cond_ae

    .line 876
    if-ltz p3, :cond_63

    .line 880
    invoke-virtual {p1, p3, p2, p2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_2a

    .line 882
    :goto_13
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 883
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 884
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 885
    if-ne v1, v0, :cond_29

    .line 886
    goto :goto_2a

    .line 888
    :cond_29
    goto :goto_13

    .line 891
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v0

    if-eq v0, p3, :cond_31

    .line 892
    return p2

    .line 895
    :cond_31
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_63

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopServiceToken startId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is last, but have "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 897
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " remaining args"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 896
    const-string v0, "ActivityManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_63
    const/16 p3, 0x63

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 903
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 902
    invoke-static {p3, v0, v1, v2, v3}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)I

    .line 904
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p3

    monitor-enter p3

    .line 905
    :try_start_80
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 906
    monitor-exit p3
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_ab

    .line 907
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 908
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz p3, :cond_9d

    .line 909
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 909
    invoke-virtual {p3, p2, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 912
    :cond_9d
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 914
    invoke-direct {p0, p1, p2, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 915
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    const/4 p1, 0x1

    return p1

    .line 906
    :catchall_ab
    move-exception p1

    :try_start_ac
    monitor-exit p3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p1

    .line 918
    :cond_ae
    return p2
.end method

.method systemServicesReady()V
    .registers 3

    .line 371
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 372
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 373
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .registers 10

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1989
    if-eqz p1, :cond_59

    .line 1990
    :try_start_6
    new-instance p3, Landroid/content/Intent$FilterComparison;

    invoke-direct {p3, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1992
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/IntentBindRecord;

    .line 1997
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 1998
    const/4 v2, 0x0

    if-eqz p2, :cond_50

    .line 1999
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_4e

    if-nez p3, :cond_4e

    .line 2002
    nop

    .line 2003
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_2f
    if-ltz v3, :cond_47

    .line 2004
    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2005
    if-eqz v5, :cond_44

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_54

    if-eqz v5, :cond_44

    .line 2007
    nop

    .line 2008
    move v3, v4

    goto :goto_48

    .line 2003
    :cond_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    :cond_47
    move v3, v2

    .line 2012
    :goto_48
    :try_start_48
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_4b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_54

    .line 2015
    goto :goto_4d

    .line 2013
    :catch_4c
    move-exception p2

    .line 2016
    :goto_4d
    goto :goto_50

    .line 2019
    :cond_4e
    :try_start_4e
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 2023
    :cond_50
    :goto_50
    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_59

    .line 2026
    :catchall_54
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_59
    :goto_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2027
    nop

    .line 2028
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 13

    .line 1943
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1946
    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbind failed: could not find connection for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1947
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    return v3

    .line 1952
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1954
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v6, 0x1

    if-lez p1, :cond_b9

    .line 1955
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ConnectionRecord;

    .line 1956
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 1957
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_6a

    .line 1959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not removed for binder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1963
    :cond_6a
    iget-object v8, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_b7

    .line 1964
    iget-object v8, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v8, :cond_85

    .line 1965
    iget-object v8, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v8}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1968
    :cond_85
    iget v8, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_b7

    .line 1969
    iget-object v8, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v6, v8, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1970
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1971
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v10

    if-nez v10, :cond_b4

    iget-object p1, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p1, p1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz p1, :cond_b3

    goto :goto_b4

    :cond_b3
    move v6, v3

    .line 1970
    :cond_b4
    :goto_b4
    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1975
    :cond_b7
    goto/16 :goto_2e

    .line 1977
    :cond_b9
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "updateOomAdj_unbindService"

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_2e .. :try_end_c1} :catchall_c6

    .line 1980
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    nop

    .line 1983
    return v6

    .line 1980
    :catchall_c6
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 19

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1006
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1007
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1008
    nop

    .line 1009
    if-eqz v1, :cond_86

    .line 1012
    iget-object v5, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    move-object v11, v9

    move-wide v9, v7

    :goto_21
    if-ltz v5, :cond_6c

    .line 1013
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1014
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_49

    .line 1015
    invoke-virtual {v0, v12, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v13

    .line 1016
    if-eqz v13, :cond_41

    .line 1018
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1019
    iput-boolean v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1020
    goto :goto_69

    .line 1022
    :cond_41
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v13, v13, v9

    if-gez v13, :cond_49

    .line 1023
    iget-wide v9, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1026
    :cond_49
    iget-boolean v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v13, :cond_69

    .line 1029
    iget v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v14, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_62

    .line 1030
    if-nez v11, :cond_5e

    .line 1031
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    :cond_5e
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 1042
    :cond_62
    iget v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v12, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 1012
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 1046
    :cond_6c
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 1047
    cmp-long v3, v9, v7

    if-gez v3, :cond_86

    .line 1050
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1051
    nop

    .line 1052
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v9, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v9, v3

    .line 1051
    invoke-virtual {v1, v0, v9, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1055
    :cond_86
    iget-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v0, :cond_8f

    .line 1056
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1058
    :cond_8f
    const/4 v0, 0x0

    :try_start_90
    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1059
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1062
    return-void

    .line 1059
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method updateScreenStateLocked(Z)V
    .registers 17

    .line 1171
    move-object v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v2, v1, :cond_8c

    .line 1172
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1176
    if-eqz v1, :cond_8c

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1179
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_17
    if-ltz v3, :cond_8c

    .line 1180
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1181
    nop

    .line 1182
    const/4 v6, 0x0

    .line 1183
    iget-object v7, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v4

    const-wide v10, 0x7fffffffffffffffL

    :goto_2f
    const-wide/16 v12, 0x0

    if-ltz v7, :cond_77

    .line 1184
    iget-object v14, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1185
    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_4a

    .line 1186
    iget-boolean v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v8, :cond_74

    .line 1187
    iput-boolean v4, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1188
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_74

    .line 1191
    :cond_4a
    iget-boolean v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v8, :cond_5a

    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_5a

    .line 1196
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1198
    :cond_5a
    invoke-virtual {p0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 1201
    iget-object v6, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iput-boolean v4, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1203
    move v6, v4

    goto :goto_74

    .line 1205
    :cond_6b
    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_74

    .line 1206
    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v10, v8

    .line 1183
    :cond_74
    :goto_74
    add-int/lit8 v7, v7, -0x1

    goto :goto_2f

    .line 1211
    :cond_77
    if-eqz v6, :cond_7d

    .line 1213
    invoke-direct {p0, v5, v12, v13}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_89

    .line 1214
    :cond_7d
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v10, v6

    if-gez v6, :cond_89

    .line 1215
    invoke-direct {p0, v5, v10, v11}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1179
    :cond_89
    :goto_89
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1220
    :cond_8c
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 7

    .line 3933
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3934
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3935
    if-eqz v0, :cond_35

    .line 3936
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 3938
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_35

    .line 3939
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3940
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 3941
    iput-object p1, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 3942
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3938
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 3946
    :cond_35
    return-void
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 1518
    nop

    .line 1519
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_5
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_38

    .line 1520
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 1521
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1522
    if-eqz v4, :cond_35

    if-ne v4, p1, :cond_20

    .line 1523
    goto :goto_35

    .line 1524
    :cond_20
    if-nez v3, :cond_28

    .line 1525
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2f

    .line 1526
    :cond_28
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1527
    goto :goto_35

    .line 1529
    :cond_2f
    :goto_2f
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1530
    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1519
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1532
    :cond_38
    return-void
.end method

.method updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .registers 9

    .line 1908
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1910
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1911
    if-eqz v0, :cond_5b

    .line 1915
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_5a

    .line 1916
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1917
    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1918
    if-eqz v1, :cond_57

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_57

    .line 1919
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    .line 1920
    if-lez p2, :cond_3e

    .line 1921
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v1, v2, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 1922
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p2, v2, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 1923
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p3, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_57

    .line 1925
    :cond_3e
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 1926
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 1927
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v3, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_57

    .line 1930
    :cond_4c
    if-lez p2, :cond_53

    .line 1931
    iput p2, v1, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 1932
    iput p3, v1, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_57

    .line 1934
    :cond_53
    iput v3, v1, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 1935
    iput v3, v1, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 1915
    :cond_57
    :goto_57
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    .line 1940
    :cond_5a
    return-void

    .line 1912
    :cond_5b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find connection for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16

    .line 4402
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4403
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4404
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    .line 4405
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_55

    aget v5, v1, v4

    .line 4406
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4407
    if-nez v6, :cond_24

    .line 4408
    goto :goto_52

    .line 4410
    :cond_24
    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4411
    const-wide v9, 0x10500000001L

    invoke-virtual {p1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4412
    iget-object v5, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4413
    move v6, v3

    :goto_38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_4f

    .line 4414
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    const-wide v10, 0x20b00000002L

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/am/ServiceRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4413
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 4417
    :cond_4f
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4405
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 4419
    :cond_55
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4420
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4421
    return-void

    .line 4420
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
