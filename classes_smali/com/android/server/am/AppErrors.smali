.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 89
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 99
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 104
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 105
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 107
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 7

    .line 652
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 653
    return-object v1

    .line 656
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_17

    .line 657
    return-object v1

    .line 660
    :cond_17
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 661
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 662
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 663
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 664
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 665
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_3a

    move p2, p3

    goto :goto_3b

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    iput-boolean p2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 667
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result p2

    if-nez p2, :cond_71

    iget-boolean p2, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz p2, :cond_48

    goto :goto_71

    .line 670
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 671
    const/4 p2, 0x2

    iput p2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 672
    new-instance p2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {p2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object p2, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 674
    iget-object p2, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 675
    iget-object p2, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 676
    iget-object p2, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p1, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_75

    .line 668
    :cond_71
    :goto_71
    iput p3, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 669
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 679
    :cond_75
    :goto_75
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 25

    .line 572
    move-object/from16 v5, p1

    if-eqz v5, :cond_7

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v10, v0

    .line 573
    if-eqz v5, :cond_f

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move v11, v0

    goto :goto_11

    :cond_f
    move/from16 v11, p8

    .line 574
    :goto_11
    if-eqz v5, :cond_19

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_1b

    :cond_19
    move/from16 v9, p9

    .line 576
    :goto_1b
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v2, p2

    iget-object v13, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v14, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;

    move-object v0, v14

    move-object v3, v10

    move v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v12

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 328
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 329
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 330
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 331
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_24

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_24

    .line 332
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 334
    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 336
    :cond_24
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 14

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 600
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 602
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 603
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 604
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p1

    return p1
.end method

.method private stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 861
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 863
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 864
    return-void
.end method


# virtual methods
.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 7

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 408
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 410
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_14
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 25

    .line 416
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 417
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 418
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 419
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 420
    if-eqz v10, :cond_2b

    if-eqz v0, :cond_2b

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_32

    .line 422
    :cond_2b
    if-eqz v10, :cond_30

    .line 423
    move-object/from16 v16, v10

    goto :goto_32

    .line 422
    :cond_30
    move-object/from16 v16, v0

    .line 426
    :goto_32
    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-eqz v12, :cond_70

    .line 427
    nop

    .line 429
    :try_start_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_3e
    if-ge v2, v1, :cond_54

    aget-object v3, v0, v2

    .line 430
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v3
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_4c} :catch_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_4c} :catch_56

    .line 432
    if-eqz v3, :cond_51

    .line 433
    nop

    .line 434
    move v0, v8

    goto :goto_55

    .line 429
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_54
    move v0, v6

    .line 441
    :goto_55
    goto :goto_58

    .line 437
    :catch_56
    move-exception v0

    move v0, v6

    .line 443
    :goto_58
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_60

    if-eqz v0, :cond_67

    .line 446
    :cond_60
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->noteAppCrash(Landroid/content/Context;I)V

    .line 449
    :cond_67
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 453
    :cond_70
    if-eqz v12, :cond_7b

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v0

    goto :goto_7c

    :cond_7b
    move v0, v6

    .line 456
    :goto_7c
    new-instance v5, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v5}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 458
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_1fb

    .line 463
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v17, v4

    move-object v4, v10

    move-object v13, v5

    move-object/from16 v5, v16

    move-object v6, v9

    move-wide v7, v14

    move-object/from16 v18, v9

    move/from16 v9, p3

    move-object/from16 v19, v10

    move/from16 v10, p4

    :try_start_9d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 465
    monitor-exit v17
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 470
    :cond_a8
    const/4 v7, 0x2

    if-ne v0, v7, :cond_b0

    .line 471
    :try_start_ab
    monitor-exit v17
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 478
    :cond_b0
    if-eqz v12, :cond_bd

    :try_start_b2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 479
    monitor-exit v17
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 483
    :cond_bd
    if-eqz v12, :cond_ca

    .line 484
    :try_start_bf
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    .line 487
    :cond_ca
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 488
    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 489
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 493
    if-eqz v12, :cond_1f4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto/16 :goto_1f4

    .line 497
    :cond_e8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 498
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 500
    iget v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 501
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    monitor-exit v17
    :try_end_fb
    .catchall {:try_start_bf .. :try_end_fb} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 505
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v8

    .line 507
    const/4 v1, 0x0

    .line 508
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v4, 0x13c

    invoke-static {v0, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 509
    const/4 v0, 0x6

    if-eq v8, v0, :cond_110

    const/4 v0, 0x7

    if-ne v8, v0, :cond_111

    .line 510
    :cond_110
    move v8, v2

    .line 512
    :cond_111
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_114
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 513
    const/4 v0, 0x5

    if-ne v8, v0, :cond_11d

    .line 514
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 516
    :cond_11d
    const/4 v5, 0x3

    if-ne v8, v5, :cond_153

    .line 517
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v6, "crash"

    const/4 v9, 0x0

    invoke-virtual {v0, v12, v9, v2, v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_12a
    .catchall {:try_start_114 .. :try_end_12a} :catchall_1ee

    .line 518
    const/4 v0, -0x1

    if-eq v3, v0, :cond_154

    .line 520
    :try_start_12d
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 521
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 520
    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_13a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12d .. :try_end_13a} :catch_13b
    .catchall {:try_start_12d .. :try_end_13a} :catchall_1ee

    .line 526
    goto :goto_154

    .line 522
    :catch_13b
    move-exception v0

    .line 525
    :try_start_13c
    const-string v6, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not restart taskId="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_154

    .line 516
    :cond_153
    const/4 v9, 0x0

    .line 529
    :cond_154
    :goto_154
    if-ne v8, v2, :cond_184

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15a
    .catchall {:try_start_13c .. :try_end_15a} :catchall_1ee

    .line 533
    :try_start_15a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 535
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v6, "crash"

    invoke-virtual {v0, v12, v9, v9, v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 536
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_17b
    .catchall {:try_start_15a .. :try_end_17b} :catchall_17f

    .line 539
    :cond_17b
    :try_start_17b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    goto :goto_184

    .line 539
    :catchall_17f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 542
    :cond_184
    :goto_184
    const/16 v0, 0x8

    if-ne v8, v0, :cond_1b1

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 545
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    :cond_1b1
    if-ne v8, v7, :cond_1b9

    .line 548
    move-object/from16 v1, p2

    invoke-virtual {v11, v12, v14, v15, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 550
    :cond_1b9
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1d2

    if-eq v8, v5, :cond_1d2

    .line 553
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 553
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_1d2
    monitor-exit v4
    :try_end_1d3
    .catchall {:try_start_17b .. :try_end_1d3} :catchall_1ee

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 558
    if-eqz v1, :cond_1ed

    .line 560
    :try_start_1d8
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1e4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d8 .. :try_end_1e4} :catch_1e5

    .line 563
    goto :goto_1ed

    .line 561
    :catch_1e5
    move-exception v0

    .line 562
    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    :cond_1ed
    :goto_1ed
    return-void

    .line 556
    :catchall_1ee
    move-exception v0

    :try_start_1ef
    monitor-exit v4
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ee

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 494
    :cond_1f4
    :goto_1f4
    :try_start_1f4
    monitor-exit v17
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 503
    :catchall_1f9
    move-exception v0

    goto :goto_1fe

    :catchall_1fb
    move-exception v0

    move-object/from16 v17, v4

    :goto_1fe
    :try_start_1fe
    monitor-exit v17
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 5

    .line 639
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object p2

    .line 640
    if-nez p2, :cond_8

    .line 641
    const/4 p1, 0x0

    return-object p1

    .line 643
    :cond_8
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.APP_ERROR"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 645
    const-string p1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    const/high16 p1, 0x10000000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 647
    return-object p3
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 22

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    const-string v4, " uid "

    if-nez v3, :cond_9c

    .line 180
    nop

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 182
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 184
    move/from16 v11, p3

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v10, v9, :cond_9e

    .line 185
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 188
    move/from16 v16, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v15, :cond_96

    .line 189
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 190
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v6

    invoke-virtual {v6, v13, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 191
    if-eqz v2, :cond_5c

    if-eqz v6, :cond_93

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 192
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 193
    goto :goto_93

    .line 195
    :cond_5c
    if-nez v16, :cond_6c

    .line 196
    if-eqz v12, :cond_63

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 197
    :cond_63
    nop

    .line 198
    const-string v6, "  Time since processes crashed:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const/4 v12, 0x1

    const/16 v16, 0x1

    .line 201
    :cond_6c
    const-string v6, "    Process "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 203
    const-string v5, ": last crashed "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v7, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 205
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    :cond_93
    :goto_93
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    .line 184
    :cond_96
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    move/from16 v12, v16

    goto :goto_27

    .line 179
    :cond_9c
    move/from16 v11, p3

    .line 210
    :cond_9e
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19c

    .line 211
    nop

    .line 212
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 214
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b7
    if-ge v6, v5, :cond_19c

    .line 215
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 216
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 217
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 218
    move v12, v7

    const/4 v7, 0x0

    :goto_cb
    if-ge v7, v10, :cond_191

    .line 219
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 220
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v8, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 221
    if-eqz v2, :cond_ed

    if-eqz v14, :cond_e9

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 222
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ed

    .line 218
    :cond_e9
    move-object/from16 p3, v3

    goto/16 :goto_187

    .line 225
    :cond_ed
    if-nez v12, :cond_fc

    .line 226
    if-eqz v11, :cond_f4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 227
    :cond_f4
    nop

    .line 228
    const-string v11, "  Bad processes:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 231
    :cond_fc
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 232
    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    const-string v13, ": crashed at time "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 p3, v3

    iget-wide v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 235
    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v2, :cond_12a

    .line 236
    const-string v2, "      Short msg: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_12a
    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v2, :cond_138

    .line 239
    const-string v2, "      Long msg: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :cond_138
    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v2, :cond_187

    .line 242
    const-string v2, "      Stack:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    nop

    .line 244
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_144
    iget-object v13, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v15, "        "

    if-ge v2, v13, :cond_16d

    .line 245
    iget-object v13, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v0, 0xa

    if-ne v13, v0, :cond_168

    .line 246
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v13, v2, v3

    invoke-virtual {v1, v0, v3, v13}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 249
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    .line 244
    :cond_168
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_144

    .line 252
    :cond_16d
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_187

    .line 253
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v2, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 218
    :cond_187
    :goto_187
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    goto/16 :goto_cb

    .line 214
    :cond_191
    move-object/from16 p3, v3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move v7, v12

    goto/16 :goto_b7

    .line 261
    :cond_19c
    return v11
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 8

    .line 623
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 625
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 626
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 627
    iget p2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 628
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 629
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 630
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 631
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 632
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 634
    return-object v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 25

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 685
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v11, 0x0

    const-string v4, "anr_show_background"

    invoke-static {v3, v4, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_1c

    move v13, v12

    goto :goto_1d

    :cond_1c
    move v13, v11

    .line 688
    :goto_1d
    nop

    .line 689
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_27

    move v3, v12

    goto :goto_28

    :cond_27
    move v3, v11

    .line 693
    :goto_28
    nop

    .line 695
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_4a

    .line 696
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 697
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_4c

    .line 699
    :cond_4a
    const/4 v4, 0x0

    move-object v5, v4

    .line 703
    :goto_4c
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v12

    move v14, v11

    :goto_54
    const-wide/32 v7, 0xea60

    if-ltz v6, :cond_8b

    .line 706
    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 708
    iget-wide v11, v15, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v11, v7

    cmp-long v7, v9, v11

    if-lez v7, :cond_6c

    .line 709
    const/4 v7, 0x1

    iput v7, v15, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_72

    .line 711
    :cond_6c
    const/4 v7, 0x1

    iget v8, v15, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v8, v7

    iput v8, v15, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 715
    :goto_72
    iget v7, v15, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v7, v7

    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v7, v7, v11

    if-gez v7, :cond_86

    iget-boolean v7, v15, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v7, :cond_85

    if-eqz v3, :cond_86

    .line 717
    :cond_85
    const/4 v14, 0x1

    .line 703
    :cond_86
    add-int/lit8 v6, v6, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_54

    .line 721
    :cond_8b
    if-eqz v4, :cond_157

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_157

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has crashed too many times: killing!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v3, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 727
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 726
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 728
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_14c

    .line 734
    const/16 v3, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 736
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_131

    .line 739
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v15, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v3, v8

    move-wide v4, v9

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v15, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_133

    .line 736
    :cond_131
    move-wide/from16 v16, v9

    .line 743
    :goto_133
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 744
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 748
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v14, v4}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 749
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 750
    if-nez v13, :cond_14f

    .line 751
    return v5

    .line 729
    :cond_14c
    move-wide/from16 v16, v9

    const/4 v5, 0x0

    .line 754
    :cond_14f
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    goto :goto_17b

    .line 721
    :cond_157
    move-wide/from16 v16, v9

    .line 756
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 757
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 756
    move-object/from16 v6, p2

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v3

    .line 758
    if-eqz v2, :cond_16b

    .line 759
    iput v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 761
    :cond_16b
    if-eqz v2, :cond_17b

    if-eqz v5, :cond_17b

    .line 762
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v7

    cmp-long v3, v16, v3

    if-gez v3, :cond_17b

    .line 763
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 767
    :cond_17b
    :goto_17b
    if-eqz v2, :cond_182

    if-eqz v14, :cond_182

    .line 768
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 775
    :cond_182
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 776
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 777
    if-ne v2, v3, :cond_1a5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v4

    if-eqz v4, :cond_1a5

    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_1a5

    .line 779
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 782
    :cond_1a5
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_1c7

    .line 785
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_1c7
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v2, :cond_1d4

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_1d4
    const/4 v0, 0x1

    return v0
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 10

    .line 867
    nop

    .line 868
    nop

    .line 869
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 870
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 871
    iget-object v1, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 872
    if-nez v1, :cond_1c

    .line 873
    const-string p1, "ActivityManager"

    const-string v1, "handleShowAnrUi: proc is null"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 876
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 877
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    goto :goto_29

    .line 876
    :cond_28
    move-object v2, v3

    .line 879
    :goto_29
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v5, 0x13d

    if-eqz v4, :cond_50

    .line 880
    const-string p1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {p1, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 883
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 886
    :cond_50
    :try_start_50
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "anr_show_background"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_60

    const/4 v7, 0x1

    .line 888
    :cond_60
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v4

    if-nez v4, :cond_79

    if-eqz v7, :cond_6d

    goto :goto_79

    .line 892
    :cond_6d
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-static {p1, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 895
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v1, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_84

    .line 889
    :cond_79
    :goto_79
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 890
    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 897
    :goto_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_50 .. :try_end_85} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 899
    if-eqz v3, :cond_8d

    .line 900
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 903
    :cond_8d
    if-eqz v2, :cond_95

    .line 904
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 907
    :cond_95
    return-void

    .line 897
    :catchall_96
    move-exception p1

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 16

    .line 794
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppErrorDialog$Data;

    .line 795
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "anr_show_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 798
    :goto_17
    const/4 v3, 0x0

    .line 801
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 802
    iget-object v5, p1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 803
    iget-object v6, p1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 804
    if-nez v5, :cond_30

    .line 805
    const-string p1, "ActivityManager"

    const-string v0, "handleShowAppErrorUi: proc is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_142

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 808
    :cond_30
    :try_start_30
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 809
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 810
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_5c

    .line 811
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App already has crash dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    if-eqz v6, :cond_57

    .line 813
    sget p1, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v6, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 815
    :cond_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_142

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 817
    :cond_5c
    :try_start_5c
    iget v9, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_6e

    iget v9, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v9, v10, :cond_6e

    move v9, v2

    goto :goto_6f

    :cond_6e
    move v9, v1

    .line 820
    :goto_6f
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v10}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v10

    array-length v11, v10

    move v12, v9

    move v9, v1

    :goto_7a
    if-ge v9, v11, :cond_87

    aget v13, v10, v9

    .line 821
    if-eq v8, v13, :cond_82

    move v13, v2

    goto :goto_83

    :cond_82
    move v13, v1

    :goto_83
    and-int/2addr v12, v13

    .line 820
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 823
    :cond_87
    if-eqz v12, :cond_b2

    if-nez v0, :cond_b2

    .line 824
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping crash dialog of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-eqz v6, :cond_ad

    .line 826
    sget p1, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v6, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 828
    :cond_ad
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_5c .. :try_end_ae} :catchall_142

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 830
    :cond_b2
    :try_start_b2
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 831
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_first_crash_dialog"

    .line 830
    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c3

    move v9, v2

    goto :goto_c4

    :cond_c3
    move v9, v1

    .line 833
    :goto_c4
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 834
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "show_first_crash_dialog_dev_option"

    iget-object v12, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 837
    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v12

    .line 833
    invoke-static {v10, v11, v1, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_dd

    move v10, v2

    goto :goto_de

    :cond_dd
    move v10, v1

    .line 838
    :goto_de
    iget-object v11, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v11, :cond_f0

    iget-object v11, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 839
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f0

    move v1, v2

    goto :goto_f1

    :cond_f0
    nop

    .line 840
    :goto_f1
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v2

    if-nez v2, :cond_fd

    if-eqz v0, :cond_113

    :cond_fd
    if-nez v1, :cond_113

    if-nez v9, :cond_107

    if-nez v10, :cond_107

    iget-boolean v0, p1, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v0, :cond_113

    .line 843
    :cond_107
    new-instance v3, Lcom/android/server/am/AppErrorDialog;

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    iput-object v3, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_11a

    .line 847
    :cond_113
    if-eqz v6, :cond_11a

    .line 848
    sget p1, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v6, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 851
    :cond_11a
    :goto_11a
    monitor-exit v4
    :try_end_11b
    .catchall {:try_start_b2 .. :try_end_11b} :catchall_142

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 853
    if-eqz v3, :cond_141

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Showing crash dialog for package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v3}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 857
    :cond_141
    return-void

    .line 851
    :catchall_142
    move-exception p1

    :try_start_143
    monitor-exit v4
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .registers 5

    .line 317
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_7

    .line 318
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 320
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_d

    .line 321
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 323
    :cond_d
    const-string/jumbo p2, "user-terminated"

    const-string/jumbo v0, "user request after error"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 578
    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_3f

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 579
    const-string v4, "Native crash"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip killing native crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") during testing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 583
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force-killing crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at watcher\'s request"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz p4, :cond_6d

    .line 585
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 586
    const/4 v0, 0x1

    const-string v1, "crash"

    invoke-virtual {p4, v1, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_73

    .line 590
    :cond_6d
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 591
    invoke-static {p8, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 594
    :cond_73
    :goto_73
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 388
    const-string v1, "forced"

    const-string v2, "killed for invalid state"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 390
    return-void

    .line 389
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 3

    .line 307
    if-eqz p1, :cond_17

    .line 308
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 309
    array-length v0, p1

    if-lez v0, :cond_17

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 311
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 314
    :cond_17
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 12

    .line 277
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_50

    .line 279
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 280
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_19
    if-ltz v4, :cond_44

    .line 281
    const/4 v5, 0x0

    .line 282
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 283
    if-nez p1, :cond_35

    .line 284
    const/4 v7, -0x1

    if-ne p3, v7, :cond_2d

    .line 285
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_3c

    .line 286
    move v5, v2

    goto :goto_3c

    .line 289
    :cond_2d
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    if-ne v6, v7, :cond_3c

    .line 290
    move v5, v2

    goto :goto_3c

    .line 293
    :cond_35
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_3c

    .line 294
    move v5, v2

    .line 296
    :cond_3c
    :goto_3c
    if-eqz v5, :cond_41

    .line 297
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 280
    :cond_41
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 300
    :cond_44
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4d

    .line 301
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 278
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 304
    :cond_50
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;Z)V
    .registers 12

    .line 349
    nop

    .line 355
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 356
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 357
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 358
    if-ltz p1, :cond_21

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_21

    .line 359
    goto :goto_37

    .line 361
    :cond_21
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_28

    .line 362
    nop

    .line 363
    move-object v2, v3

    goto :goto_3a

    .line 365
    :cond_28
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, p3}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-ltz p4, :cond_36

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_37

    .line 367
    :cond_36
    move-object v2, v3

    .line 356
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 370
    :cond_3a
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_81

    .line 372
    if-nez v2, :cond_6c

    .line 373
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "crashApplication: nothing for uid="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " initialPid="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 380
    :cond_6c
    invoke-virtual {v2, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 381
    if-eqz p6, :cond_80

    .line 384
    nop

    .line 385
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;

    invoke-direct {p2, p0, v2}, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    :cond_80
    return-void

    .line 370
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 24

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 111
    return-void

    .line 114
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 116
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 118
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const-wide v10, 0x10900000001L

    const-wide v12, 0x20b00000002L

    if-nez v5, :cond_ed

    .line 119
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 121
    const/4 v14, 0x0

    :goto_50
    if-ge v14, v15, :cond_ea

    .line 122
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 123
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 124
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 127
    invoke-virtual {v1, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 128
    const/4 v13, 0x0

    :goto_6c
    if-ge v13, v12, :cond_d7

    .line 129
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 130
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v11

    invoke-virtual {v11, v8, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 131
    if-eqz v2, :cond_9a

    if-eqz v11, :cond_92

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9a

    .line 132
    move-wide/from16 v17, v3

    move-object/from16 v16, v9

    move/from16 p3, v12

    move-object v12, v8

    goto :goto_c8

    .line 131
    :cond_92
    move-wide/from16 v17, v3

    move-object/from16 v16, v9

    move/from16 p3, v12

    move-object v12, v8

    goto :goto_c8

    .line 134
    :cond_9a
    move-wide/from16 v17, v3

    move/from16 p3, v12

    const-wide v11, 0x20b00000002L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 135
    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    nop

    .line 137
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 136
    move-object v12, v8

    move-object/from16 v16, v9

    const-wide v8, 0x10300000002L

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 138
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 128
    :goto_c8
    add-int/lit8 v13, v13, 0x1

    move-object v8, v12

    move-object/from16 v9, v16

    move-wide/from16 v3, v17

    const-wide v10, 0x10900000001L

    move/from16 v12, p3

    goto :goto_6c

    .line 140
    :cond_d7
    move-wide/from16 v17, v3

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 121
    add-int/lit8 v14, v14, 0x1

    const-wide v10, 0x10900000001L

    const-wide v12, 0x20b00000002L

    goto/16 :goto_50

    :cond_ea
    move-wide/from16 v17, v3

    goto :goto_ef

    .line 118
    :cond_ed
    move-wide/from16 v17, v3

    .line 145
    :goto_ef
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b5

    .line 146
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 148
    const/4 v5, 0x0

    :goto_106
    if-ge v5, v4, :cond_1b5

    .line 149
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 150
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 152
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 154
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 155
    const/4 v13, 0x0

    :goto_12a
    if-ge v13, v10, :cond_1aa

    .line 156
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 157
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v15

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 158
    if-eqz v2, :cond_154

    if-eqz v15, :cond_14e

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 159
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_154

    .line 160
    move-object/from16 p3, v3

    move-object v14, v8

    move-object/from16 v16, v9

    goto :goto_19b

    .line 158
    :cond_14e
    move-object/from16 p3, v3

    move-object v14, v8

    move-object/from16 v16, v9

    goto :goto_19b

    .line 162
    :cond_154
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 163
    move-object/from16 p3, v3

    const-wide v11, 0x20b00000002L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 164
    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 165
    iget-wide v11, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-object v14, v8

    move-object/from16 v16, v9

    const-wide v8, 0x10300000002L

    invoke-virtual {v1, v8, v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 166
    const-wide v11, 0x10900000003L

    iget-object v8, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 167
    const-wide v8, 0x10900000004L

    iget-object v11, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 168
    const-wide v8, 0x10900000005L

    iget-object v11, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 155
    :goto_19b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move-object v8, v14

    move-object/from16 v9, v16

    const-wide v11, 0x10900000001L

    goto :goto_12a

    .line 171
    :cond_1aa
    move-object/from16 p3, v3

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 148
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_106

    .line 175
    :cond_1b5
    move-wide/from16 v2, v17

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 176
    return-void
.end method
