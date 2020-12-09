.class Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessRecord$PackageList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field final appZygote:Z

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field completedAdjSeq:I

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field connectionGroup:I

.field connectionImportance:I

.field connectionService:Lcom/android/server/am/ServiceRecord;

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field containsCycle:Z

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field final curReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forceCrashReport:Z

.field forcingToImportant:Ljava/lang/Object;

.field gids:[I

.field hasAboveClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hostingRecord:Lcom/android/server/am/HostingRecord;

.field public inFullBackup:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instructionSet:Ljava/lang/String;

.field final isolated:Z

.field isolatedEntryPoint:Ljava/lang/String;

.field isolatedEntryPointArgs:[Ljava/lang/String;

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCachedSwapPss:J

.field lastCompactAction:I

.field lastCompactTime:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastMemInfo:Landroid/os/Debug$MemoryInfo;

.field lastMemInfoTime:J

.field lastProviderTime:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastSwapPss:J

.field lastTopTime:J

.field lruSeq:I

.field final mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashing:Z

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mDebugging:Z

.field private mFgInteractionTime:J

.field private mFgServiceTypes:I

.field private mHasClientActivities:Z

.field private mHasForegroundActivities:Z

.field private mHasForegroundServices:Z

.field private mHasOverlayUi:Z

.field private mHasTopUi:Z

.field private mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field private mInteractionEventTime:J

.field private mNotResponding:Z

.field private mPendingUiClean:Z

.field private mPersistent:Z

.field private mRepFgServiceTypes:I

.field private mRepProcState:I

.field private mRequiredAbi:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mUsingWrapper:Z

.field private mWhenUnimportant:J

.field private final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field maxAdj:I

.field mountMode:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingStart:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

.field procStatFile:Ljava/lang/String;

.field procStateChanged:Z

.field final procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field pssStatType:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field volatile removed:Z

.field renderThreadTid:I

.field repForegroundActivities:Z

.field reportLowMemory:Z

.field reportedInteraction:Z

.field reqCompactAction:I

.field runningRemoteAnimation:Z

.field savedPriority:I

.field seInfo:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field startSeq:J

.field startTime:J

.field startUid:I

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field unlocked:Z

.field final userId:I

.field verifiedAdj:I

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 13

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessRecord$PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 124
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 160
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 161
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 162
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 163
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 164
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 223
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 253
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 257
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 264
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 576
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 577
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 578
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p4, :cond_68

    move p1, v0

    goto :goto_69

    :cond_68
    move p1, v1

    :goto_69
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 579
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const v2, 0x15f90

    if-lt p1, v2, :cond_7e

    .line 580
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const v2, 0x182b7

    if-gt p1, v2, :cond_7e

    goto :goto_7f

    :cond_7e
    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 581
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 582
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 583
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 584
    const/16 p1, 0x3e9

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 585
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 586
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 587
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 588
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide p3, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide p3, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 590
    new-instance p1, Lcom/android/server/wm/WindowProcessController;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v0, p1

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 592
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v0, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {p4, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method private getShowBackground()Z
    .registers 4

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "anr_show_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private isInterestingForBackgroundTraces()Z
    .registers 4

    .line 1631
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 1632
    return v2

    .line 1644
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1645
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1646
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v2, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    nop

    .line 1644
    :goto_2c
    return v2
.end method

.method private makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1603
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1606
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_1a

    .line 1607
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1611
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 1613
    return-void
.end method


# virtual methods
.method addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 3

    .line 1178
    if-nez p1, :cond_3

    return-void

    .line 1179
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1181
    return-void
.end method

.method addBoundClientUid(I)V
    .registers 3

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1193
    return-void
.end method

.method addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 1219
    if-nez p1, :cond_3

    .line 1220
    return-void

    .line 1222
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 1223
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_33

    .line 1224
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1225
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 1226
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1223
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1229
    :cond_33
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1230
    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 13

    .line 884
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 885
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 887
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_2f

    .line 888
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p4

    move-object v2, v0

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 890
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 891
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p1, p2, :cond_34

    .line 892
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_34

    .line 895
    :cond_2f
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 897
    :cond_34
    :goto_34
    const/4 p1, 0x1

    return p1

    .line 899
    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method public appDied()V
    .registers 3

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1348
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1349
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1350
    return-void

    .line 1349
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .registers 31

    .line 1410
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v6, p3

    move-object/from16 v1, p4

    move-object/from16 v11, p6

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    new-instance v4, Landroid/util/SparseArray;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 1413
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    new-instance v7, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;

    invoke-direct {v7, v0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v5, v11, v7}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1417
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1420
    :cond_30
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1422
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 1423
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_33 .. :try_end_5f} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1425
    :cond_63
    :try_start_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 1426
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_63 .. :try_end_88} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1428
    :cond_8c
    :try_start_8c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 1429
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    monitor-exit v5
    :try_end_b1
    .catchall {:try_start_8c .. :try_end_b1} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1431
    :cond_b5
    :try_start_b5
    iget-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v9, :cond_dc

    .line 1432
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    monitor-exit v5
    :try_end_d8
    .catchall {:try_start_b5 .. :try_end_d8} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1434
    :cond_dc
    :try_start_dc
    iget-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v9, :cond_103

    .line 1435
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit v5
    :try_end_ff
    .catchall {:try_start_dc .. :try_end_ff} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1441
    :cond_103
    const/4 v10, 0x1

    :try_start_104
    invoke-virtual {v0, v10}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1444
    const/16 v9, 0x7538

    new-array v3, v3, [Ljava/lang/Object;

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v10

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v13, v3, v15

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x3

    aput-object v13, v3, v15

    const/4 v13, 0x4

    aput-object v11, v3, v13

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1448
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v3

    if-nez v3, :cond_1ba

    .line 1452
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1453
    if-eqz v1, :cond_14f

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v9

    if-lez v9, :cond_14f

    .line 1454
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    .line 1456
    :cond_14f
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v3, v9, :cond_15a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    :cond_15a
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v9, v13, :cond_16d

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v9, v3, :cond_16d

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_16d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    :goto_176
    if-ltz v9, :cond_1ba

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 1462
    if-eqz v13, :cond_1b5

    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_1b5

    .line 1463
    iget v15, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1464
    if-lez v15, :cond_1b5

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v15, v10, :cond_1b5

    if-eq v15, v3, :cond_1b5

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v10, :cond_1b5

    .line 1465
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v10

    if-eqz v10, :cond_1a4

    .line 1466
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    .line 1468
    :cond_1a4
    iget-boolean v10, v13, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v10, :cond_1b0

    .line 1469
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    .line 1472
    :cond_1b0
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1460
    :cond_1b5
    :goto_1b5
    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    const/4 v15, 0x3

    goto :goto_176

    .line 1479
    :cond_1ba
    monitor-exit v5
    :try_end_1bb
    .catchall {:try_start_104 .. :try_end_1bb} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1482
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1483
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1484
    const-string v3, "ANR in "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    if-eqz v12, :cond_1df

    .line 1486
    const-string v3, " ("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_1df
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    const-string v3, "PID: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    if-eqz v11, :cond_202

    .line 1491
    const-string v3, "Reason: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :cond_202
    if-eqz v6, :cond_217

    .line 1494
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 1495
    const-string v3, "Parent: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    :cond_217
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 1501
    nop

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v5

    if-eqz v5, :cond_245

    .line 1503
    move v5, v14

    :goto_225
    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v13, v13

    if-ge v5, v13, :cond_242

    .line 1504
    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v13, v13, v5

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23e

    .line 1505
    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v13, v5, v14

    .line 1506
    goto :goto_244

    .line 1503
    :cond_23e
    const/4 v15, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_225

    :cond_242
    const/4 v15, 0x1

    const/4 v5, 0x0

    :goto_244
    goto :goto_248

    .line 1510
    :cond_245
    const/4 v15, 0x1

    sget-object v5, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 1513
    :goto_248
    if-nez v5, :cond_24c

    const/4 v5, 0x0

    goto :goto_250

    :cond_24c
    invoke-static {v5}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v5

    .line 1514
    :goto_250
    nop

    .line 1516
    if-eqz v5, :cond_269

    .line 1517
    new-instance v13, Ljava/util/ArrayList;

    array-length v9, v5

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1518
    array-length v9, v5

    :goto_25a
    if-ge v14, v9, :cond_26a

    aget v19, v5, v14

    .line 1519
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    goto :goto_25a

    .line 1516
    :cond_269
    const/4 v13, 0x0

    .line 1525
    :cond_26a
    nop

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v5

    if-eqz v5, :cond_273

    const/4 v5, 0x0

    goto :goto_274

    :cond_273
    move-object v5, v3

    :goto_274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v9

    if-eqz v9, :cond_27b

    const/4 v4, 0x0

    .line 1525
    :cond_27b
    invoke-static {v2, v5, v4, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v22

    .line 1529
    nop

    .line 1530
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v2

    if-eqz v2, :cond_2a8

    .line 1531
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1532
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 1533
    :try_start_290
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v4

    .line 1534
    monitor-exit v2
    :try_end_299
    .catchall {:try_start_290 .. :try_end_299} :catchall_2a5

    .line 1535
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v4

    goto :goto_2a9

    .line 1534
    :catchall_2a5
    move-exception v0

    :try_start_2a6
    monitor-exit v2
    :try_end_2a7
    .catchall {:try_start_2a6 .. :try_end_2a7} :catchall_2a5

    throw v0

    .line 1530
    :cond_2a8
    const/4 v9, 0x0

    .line 1539
    :goto_2a9
    invoke-virtual {v3, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    if-nez v22, :cond_2c1

    .line 1544
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 1547
    :cond_2c1
    const/16 v13, 0x4f

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1548
    if-nez v12, :cond_2cd

    const-string/jumbo v2, "unknown"

    goto :goto_2ce

    :cond_2cd
    move-object v2, v12

    .line 1550
    :goto_2ce
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2de

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2db

    .line 1551
    const/16 v18, 0x2

    goto :goto_2e0

    .line 1552
    :cond_2db
    const/16 v18, 0x1

    goto :goto_2e0

    .line 1553
    :cond_2de
    const/16 v18, 0x0

    .line 1554
    :goto_2e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_2e9

    .line 1555
    const/16 v19, 0x2

    goto :goto_2eb

    .line 1556
    :cond_2e9
    const/16 v19, 0x1

    .line 1557
    :goto_2eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v3

    .line 1558
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2f6

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2f8

    :cond_2f6
    const-string v4, ""

    :goto_2f8
    move-object/from16 v21, v4

    .line 1547
    const/4 v8, 0x2

    const/16 v23, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, p6

    move/from16 v20, v3

    invoke-static/range {v13 .. v21}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)I

    .line 1559
    if-eqz v1, :cond_30e

    .line 1560
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v7, v1

    goto :goto_30f

    :cond_30e
    const/4 v7, 0x0

    .line 1561
    :goto_30f
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v2, "anr"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v14, v8

    move-object/from16 v8, p6

    move-object v15, v10

    move/from16 v14, v23

    move-object/from16 v10, v22

    move-object v11, v13

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1564
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;

    invoke-direct {v3, v0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;-><init>(Lcom/android/server/am/ProcessRecord;)V

    new-instance v4, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;

    invoke-direct {v4, v0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 1570
    return-void

    .line 1573
    :cond_33f
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_342
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1576
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_356

    .line 1577
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1580
    :cond_356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_36c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_36c

    .line 1581
    const-string v2, "bg anr"

    invoke-virtual {v0, v2, v14}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1582
    monitor-exit v1
    :try_end_368
    .catchall {:try_start_342 .. :try_end_368} :catchall_3b0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1586
    :cond_36c
    nop

    .line 1587
    move-object/from16 v2, p6

    if-eqz v2, :cond_383

    :try_start_371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_385

    :cond_383
    const-string v2, "ANR"

    :goto_385
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1586
    invoke-direct {v0, v12, v2, v3}, Lcom/android/server/am/ProcessRecord;->makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3ab

    .line 1593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1594
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1595
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1597
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1599
    :cond_3ab
    monitor-exit v1
    :try_end_3ac
    .catchall {:try_start_371 .. :try_end_3ac} :catchall_3b0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1600
    return-void

    .line 1599
    :catchall_3b0
    move-exception v0

    :try_start_3b1
    monitor-exit v1
    :try_end_3b2
    .catchall {:try_start_3b1 .. :try_end_3b2} :catchall_3b0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1479
    :catchall_3b6
    move-exception v0

    :try_start_3b7
    monitor-exit v5
    :try_end_3b8
    .catchall {:try_start_3b7 .. :try_end_3b8} :catchall_3b6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method clearBoundClientUids()V
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1235
    return-void
.end method

.method public clearProfilerIfNeeded()V
    .registers 3

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1260
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1261
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1262
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eq v1, p0, :cond_25

    goto :goto_2f

    .line 1265
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearProfilerLocked()V

    .line 1266
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1267
    return-void

    .line 1263
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1266
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 323
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 324
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_30

    .line 325
    const-string v2, " ISOLATED uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    :cond_30
    const-string v2, " gids={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    const-string v3, ", "

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    .line 329
    move v2, v4

    :goto_3d
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v5, v5

    if-ge v2, v5, :cond_51

    .line 330
    if-eqz v2, :cond_47

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    :cond_47
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 335
    :cond_51
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mRequiredAbi="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    const-string v5, " instructionSet="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v5, :cond_83

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "class="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_83
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v5, :cond_98

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "manageSpaceActivityName="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    :cond_98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "dir="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string v5, " publicDir="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    const-string v5, " data="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "packageList={"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    move v5, v4

    :goto_c9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e2

    .line 351
    if-lez v5, :cond_d6

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :cond_d6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_c9

    .line 354
    :cond_e2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v5, :cond_111

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "packageDependencies={"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    move v5, v4

    :goto_f3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_10e

    .line 358
    if-lez v5, :cond_100

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    :cond_100
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_f3

    .line 361
    :cond_10e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    :cond_111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 364
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_12f

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mInstr="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 367
    :cond_12f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thread="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " starting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastActivityTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 372
    const-string v2, " lastPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 374
    const-string v2, " pssStatType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 375
    const-string v2, " nextPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 377
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "adjSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 379
    const-string v2, " lruSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 380
    const-string v2, " lastPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v5, 0x400

    mul-long/2addr v2, v5

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 381
    const-string v2, " lastSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    mul-long/2addr v2, v5

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 382
    const-string v2, " lastCachedPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    mul-long/2addr v2, v5

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 383
    const-string v2, " lastCachedSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    mul-long/2addr v2, v5

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 384
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "procStateMemTracker: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 388
    const-string v2, " empty="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 389
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_20c

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "serviceb="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 391
    const-string v2, " serviceHighRam="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 393
    :cond_20c
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v2, :cond_228

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notCachedSinceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 395
    const-string v2, " initialIdlePss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 397
    :cond_228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 398
    const-string v2, " curRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    const-string v2, " setRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 400
    const-string v2, " cur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 401
    const-string v2, " set="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastCompactTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 403
    const-string v2, " lastCompactAction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCurSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    const-string v2, " setSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 406
    const-string v2, " systemNoUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 407
    const-string v2, " trimMemoryLevel="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 409
    const-string v2, " mRepProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 410
    const-string v2, " pssProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 411
    const-string v2, " setProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 412
    const-string v2, " lastStateTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 414
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 415
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v2, :cond_2ea

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    if-nez v2, :cond_2ea

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v2, :cond_2ea

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_315

    .line 416
    :cond_2ea
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasShownUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 417
    const-string v2, " pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 418
    const-string v2, " hasAboveClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 419
    const-string v2, " treatLikeActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 421
    :cond_315
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_31d

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v2, :cond_33e

    .line 422
    :cond_31d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connectionGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 423
    const-string v2, " Importance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 424
    const-string v2, " Service="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 426
    :cond_33e
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    if-nez v2, :cond_34e

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-nez v2, :cond_34e

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_373

    .line 427
    :cond_34e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasTopUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 428
    const-string v2, " hasOverlayUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 429
    const-string v2, " runningRemoteAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 431
    :cond_373
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-nez v2, :cond_37b

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_392

    .line 432
    :cond_37b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasForegroundServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 433
    const-string v2, " forcingToImportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 435
    :cond_392
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    const-wide/16 v5, 0x0

    if-nez v2, :cond_39e

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3d7

    .line 436
    :cond_39e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reportedInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 438
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3c0

    .line 439
    const-string v2, " time="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 442
    :cond_3c0
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3d4

    .line 443
    const-string v2, " fgInteractionTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 446
    :cond_3d4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    :cond_3d7
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_3df

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v2, :cond_3f7

    .line 449
    :cond_3df
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 450
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 452
    :cond_3f7
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    const-string v3, ")"

    if-nez v2, :cond_405

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    if-nez v2, :cond_405

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v2, :cond_429

    .line 453
    :cond_405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasClientActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 454
    const-string v2, " foregroundActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 455
    const-string v2, " (rep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    :cond_429
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_43f

    .line 458
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastProviderTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    invoke-static {v7, v8, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 460
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    :cond_43f
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_455

    .line 463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastTopTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    invoke-static {v7, v8, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 465
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 467
    :cond_455
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v2, :cond_466

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 470
    :cond_466
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v2, :cond_478

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 473
    :cond_478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 475
    const-string v8, "MOUNT_EXTERNAL_"

    invoke-static {v2, v8, v7}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xb

    if-le v2, v7, :cond_4d0

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 478
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_4c2

    .line 479
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 482
    :cond_4c2
    const-string v2, " whenUnimportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    sub-long/2addr v5, v0

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 484
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 486
    :cond_4d0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastRequestedGc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 488
    const-string v2, " lastLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 490
    const-string v0, " reportLowMemory="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 491
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v0, :cond_4fd

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_4fd

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_51e

    .line 492
    :cond_4fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "killed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 493
    const-string v0, " killedByAm="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 494
    const-string v0, " waitingToKill="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    :cond_51e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez v0, :cond_536

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    if-nez v0, :cond_536

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v0, :cond_536

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    if-nez v0, :cond_536

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v0, :cond_536

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v0, :cond_588

    .line 498
    :cond_536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDebugging="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 499
    const-string v0, " mCrashing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 500
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 501
    const-string v1, " mNotResponding="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 502
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 503
    const-string v0, " bad="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v0, :cond_585

    .line 507
    const-string v0, " errorReportReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    :cond_585
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 512
    :cond_588
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v0, :cond_59a

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    :cond_59a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v0, :cond_5a2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v0, :cond_5c0

    .line 516
    :cond_5a2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isolatedEntryPoint="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isolatedEntryPointArgs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_5c0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-string v1, "  - "

    if-lez v0, :cond_5f2

    .line 522
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Services:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    move v0, v4

    :goto_5d8
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_5f2

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d8

    .line 527
    :cond_5f2
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_625

    .line 528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing Services (fg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    move v0, v4

    :goto_60b
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_625

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_60b

    .line 534
    :cond_625
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_650

    .line 535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    move v0, v4

    :goto_636
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_650

    .line 537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_636

    .line 540
    :cond_650
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_68e

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Published Providers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    move v0, v4

    :goto_661
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_68e

    .line 543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_661

    .line 547
    :cond_68e
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6bf

    .line 548
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Connected Providers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    move v0, v4

    :goto_69f
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6bf

    .line 550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_69f

    .line 553
    :cond_6bf
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6ea

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Current Receivers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    move v0, v4

    :goto_6d0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_6ea

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d0

    .line 559
    :cond_6ea
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_715

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Receivers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    move v0, v4

    :goto_6fb
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_715

    .line 562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_6fb

    .line 565
    :cond_715
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_740

    .line 566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Background activity start whitelist tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    nop

    :goto_726
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_740

    .line 568
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 567
    add-int/lit8 v4, v4, 0x1

    goto :goto_726

    .line 572
    :cond_740
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 9

    .line 912
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    if-le v0, p1, :cond_35

    .line 913
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 914
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 916
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_35

    .line 917
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 918
    invoke-virtual {v3, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 919
    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 920
    invoke-virtual {v5, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 917
    invoke-static/range {v0 .. v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 916
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    .line 923
    :cond_35
    return-void
.end method

.method getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .registers 2

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCurProcState()I
    .registers 2

    .line 1007
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .registers 2

    .line 1254
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .registers 2

    .line 1015
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .registers 2

    .line 998
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .registers 3

    .line 1147
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForegroundServiceTypes()I
    .registers 2

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getInputDispatchingTimeout()J
    .registers 3

    .line 1372
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method getInteractionEventTime()J
    .registers 3

    .line 1138
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLruProcessList()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 4

    .line 965
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 966
    if-nez v0, :cond_a

    .line 967
    const/4 v0, 0x0

    return-object v0

    .line 969
    :cond_a
    new-array v0, v0, [Ljava/lang/String;

    .line 970
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 971
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 973
    :cond_20
    return-object v0
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 978
    if-nez v0, :cond_a

    .line 979
    const/4 v0, 0x0

    return-object v0

    .line 981
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 983
    new-instance v2, Landroid/content/pm/VersionedPackage;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 985
    :cond_31
    return-object v0
.end method

.method public getProcessClassEnum()I
    .registers 3

    .line 1376
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_8

    .line 1377
    const/4 v0, 0x3

    return v0

    .line 1379
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e

    .line 1380
    const/4 v0, 0x0

    return v0

    .line 1382
    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    .line 1383
    :cond_16
    nop

    .line 1382
    :goto_17
    return v1
.end method

.method getReportedForegroundServiceTypes()I
    .registers 2

    .line 1089
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    return v0
.end method

.method getReportedProcState()I
    .registers 2

    .line 1030
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .line 903
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 904
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_d

    .line 905
    const/16 v0, 0x320

    return v0

    .line 908
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method getWhenUnimportant()J
    .registers 3

    .line 1156
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .registers 2

    .line 989
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method hasActivities()Z
    .registers 2

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    return v0
.end method

.method hasActivitiesOrRecentTasks()Z
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasClientActivities()Z
    .registers 2

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .registers 2

    .line 1102
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    return v0
.end method

.method hasLocationForegroundServices()Z
    .registers 2

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasOverlayUi()Z
    .registers 2

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .registers 2

    .line 1285
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    return v0
.end method

.method hasRecentTasks()Z
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasTopUi()Z
    .registers 2

    .line 1120
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    return v0
.end method

.method isCrashing()Z
    .registers 2

    .line 1039
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .registers 2

    .line 1165
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 6

    .line 681
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 682
    return v1

    .line 685
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 686
    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_24

    .line 687
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 688
    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_21

    .line 689
    return v1

    .line 686
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 692
    :cond_24
    return v2
.end method

.method isMonitorCpuUsage()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .registers 2

    .line 1048
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    return v0
.end method

.method isPersistent()Z
    .registers 2

    .line 1057
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    return v0
.end method

.method isSilentAnr()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1392
    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isUsingWrapper()Z
    .registers 2

    .line 1174
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return v0
.end method

.method kill(Ljava/lang/String;Z)V
    .registers 9

    .line 761
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_96

    .line 762
    const-wide/16 v0, 0x40

    const-string v2, "kill"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 763
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_4d

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne p2, v2, :cond_4d

    .line 764
    :cond_1b
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 764
    const-string v4, "ActivityManager"

    invoke-virtual {p2, v4, v2, v3}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    :cond_4d
    iget p2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_89

    .line 769
    const/16 p2, 0x7547

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    aput-object p1, v4, v2

    invoke-static {p2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 770
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 771
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget p2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_8b

    .line 773
    :cond_89
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 775
    :goto_8b
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez p1, :cond_93

    .line 776
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 777
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 779
    :cond_93
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 781
    :cond_96
    return-void
.end method

.method public synthetic lambda$appNotResponding$0$ProcessRecord()V
    .registers 3

    .line 1413
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$1$ProcessRecord()V
    .registers 3

    .line 1564
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$2$ProcessRecord()V
    .registers 3

    .line 1566
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1567
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1568
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1569
    return-void

    .line 1568
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 13

    .line 604
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_9d

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 606
    if-eqz v0, :cond_44

    .line 607
    const/4 v2, -0x1

    .line 608
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 607
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 609
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_41

    .line 610
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 611
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 612
    const/4 v6, -0x1

    invoke-static {v6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 613
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 610
    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 609
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 615
    :cond_41
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 617
    :cond_44
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 619
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 620
    const/4 v1, 0x0

    :goto_5f
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9d

    .line 621
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v2

    .line 622
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v3, :cond_7a

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v0, :cond_7a

    .line 623
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 625
    :cond_7a
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p2

    move-object v4, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 627
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_9a

    .line 628
    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 620
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 632
    :cond_9d
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 633
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 634
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 5

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    goto :goto_b

    .line 877
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 856
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 857
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2a

    .line 859
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 860
    :cond_2a
    if-eqz v1, :cond_34

    .line 861
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 863
    :cond_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :goto_37
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_59

    .line 867
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 870
    :cond_59
    if-eqz v1, :cond_63

    .line 871
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 873
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 11

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 638
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 639
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 640
    if-eqz v1, :cond_6e

    .line 641
    nop

    .line 642
    const/4 v3, -0x1

    .line 643
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 642
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 644
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_26
    if-ltz p1, :cond_46

    .line 645
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 646
    invoke-virtual {v5, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    const/4 v6, -0x1

    invoke-static {v6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 648
    invoke-virtual {v7, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 645
    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 644
    add-int/lit8 p1, p1, -0x1

    goto :goto_26

    .line 650
    :cond_46
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 652
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 653
    const/4 p1, 0x0

    :goto_4c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6e

    .line 654
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v2

    .line 655
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v3, :cond_67

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v1, :cond_67

    .line 656
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 658
    :cond_67
    iput-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 659
    iput-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 653
    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    .line 662
    :cond_6e
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 7

    .line 714
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    const/16 v1, 0x384

    const/16 v2, 0xfa

    const/16 v3, 0xc8

    const/16 v4, 0x64

    if-eqz v0, :cond_25

    .line 720
    if-gez p1, :cond_f

    goto :goto_25

    .line 722
    :cond_f
    if-ge p1, v4, :cond_13

    .line 723
    move p1, v4

    goto :goto_25

    .line 724
    :cond_13
    if-ge p1, v3, :cond_17

    .line 725
    move p1, v3

    goto :goto_25

    .line 726
    :cond_17
    if-ge p1, v2, :cond_1b

    .line 727
    move p1, v2

    goto :goto_25

    .line 728
    :cond_1b
    if-ge p1, v1, :cond_1f

    .line 729
    move p1, v1

    goto :goto_25

    .line 730
    :cond_1f
    const/16 v0, 0x3e7

    if-ge p1, v0, :cond_25

    .line 731
    add-int/lit8 p1, p1, 0x1

    .line 734
    :cond_25
    :goto_25
    return p1
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .registers 8

    .line 1327
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1329
    if-eqz p2, :cond_12

    .line 1330
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityManagerService$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1332
    :cond_12
    if-eqz p3, :cond_1b

    .line 1333
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1337
    :cond_1b
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p3}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1339
    iput-boolean p3, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1340
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1341
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1342
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1343
    return-void

    .line 1342
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 3

    .line 1184
    if-nez p1, :cond_3

    return-void

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1186
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 1187
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 1186
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1188
    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 12

    .line 929
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 930
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_97

    .line 931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 932
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v4, -0x1

    .line 933
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 932
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 934
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_24
    if-ltz v1, :cond_44

    .line 935
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 936
    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    .line 937
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 938
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 935
    invoke-static/range {v3 .. v9}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 934
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 940
    :cond_44
    if-eq v0, v2, :cond_b1

    .line 941
    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_61

    .line 942
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v2

    .line 943
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_5e

    .line 944
    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 941
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 948
    :cond_61
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 949
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 951
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 953
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 954
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p1, v1, :cond_b1

    .line 955
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_b1

    .line 958
    :cond_97
    if-eq v0, v2, :cond_b1

    .line 959
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 960
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    goto :goto_b2

    .line 958
    :cond_b1
    :goto_b1
    nop

    .line 962
    :goto_b2
    return-void
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .registers 6

    .line 740
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_49

    .line 741
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_49

    .line 742
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 743
    const-string p1, "ActivityManager"

    const-string/jumbo v0, "scheduleCrash: trying to crash system process!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void

    .line 746
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 748
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_28
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 754
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    goto :goto_49

    .line 754
    :catchall_26
    move-exception p1

    goto :goto_45

    .line 749
    :catch_28
    move-exception v2

    .line 752
    :try_start_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleCrash for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_26

    goto :goto_22

    .line 754
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 758
    :cond_49
    :goto_49
    return-void
.end method

.method setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 6

    .line 1238
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1239
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 1240
    :goto_9
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_12

    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZZ)V

    .line 1242
    return-void
.end method

.method setCrashing(Z)V
    .registers 3

    .line 1034
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 1036
    return-void
.end method

.method setCurProcState(I)V
    .registers 3

    .line 1002
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 1003
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 1004
    return-void
.end method

.method setCurRawAdj(I)V
    .registers 4

    .line 1249
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 1250
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 1251
    return-void
.end method

.method setCurRawProcState(I)V
    .registers 2

    .line 1011
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 1012
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .registers 3

    .line 993
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 995
    return-void
.end method

.method setDebugging(Z)V
    .registers 3

    .line 1160
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    .line 1162
    return-void
.end method

.method setFgInteractionTime(J)V
    .registers 4

    .line 1142
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    .line 1143
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 1144
    return-void
.end method

.method setHasClientActivities(Z)V
    .registers 3

    .line 1106
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    .line 1107
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    .line 1108
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .registers 3

    .line 1097
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundActivities(Z)V

    .line 1099
    return-void
.end method

.method setHasForegroundServices(ZI)V
    .registers 3

    .line 1070
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    .line 1071
    iput p2, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    .line 1072
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    .line 1073
    return-void
.end method

.method setHasOverlayUi(Z)V
    .registers 3

    .line 1124
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    .line 1125
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 1126
    return-void
.end method

.method setHasTopUi(Z)V
    .registers 3

    .line 1115
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    .line 1116
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 1117
    return-void
.end method

.method setInteractionEventTime(J)V
    .registers 4

    .line 1133
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 1135
    return-void
.end method

.method setNotResponding(Z)V
    .registers 3

    .line 1043
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 1045
    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 4

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1279
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    .line 1280
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 1281
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1282
    return-void

    .line 1281
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 1290
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1291
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1293
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1294
    return-void

    .line 1293
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setPersistent(Z)V
    .registers 3

    .line 1052
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    .line 1054
    return-void
.end method

.method public setPid(I)V
    .registers 3

    .line 596
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 597
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    .line 598
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    .line 599
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 600
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 601
    return-void
.end method

.method setReportedForegroundServiceTypes(I)V
    .registers 2

    .line 1093
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    .line 1094
    return-void
.end method

.method setReportedProcState(I)V
    .registers 10

    .line 1019
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 1021
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1022
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1023
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1024
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1021
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1020
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1026
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 1027
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 3

    .line 1061
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 5

    .line 1354
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 1355
    const-string p1, "ActivityManager"

    const-string/jumbo v0, "system can\'t run remote animation"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void

    .line 1358
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1359
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-ne v1, p1, :cond_20

    .line 1360
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1362
    :cond_20
    :try_start_20
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    .line 1367
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    const-string/jumbo v2, "updateOomAdj_uiVisibility"

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 1368
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1369
    return-void

    .line 1368
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V
    .registers 6

    .line 313
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 314
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 315
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    .line 316
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->startTime:J

    .line 317
    return-void
.end method

.method setUsingWrapper(Z)V
    .registers 3

    .line 1169
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    .line 1171
    return-void
.end method

.method setWhenUnimportant(J)V
    .registers 4

    .line 1151
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    .line 1152
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 1153
    return-void
.end method

.method startAppProblemLocked()V
    .registers 7

    .line 1618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1620
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2a

    aget v3, v0, v2

    .line 1621
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_27

    .line 1622
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1620
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1626
    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1627
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 809
    return-object v0

    .line 811
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 812
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v0
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 817
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_22

    .line 822
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 824
    :cond_22
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 827
    if-lt v0, v1, :cond_40

    .line 828
    const/16 v2, 0x61

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 831
    :cond_40
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    :goto_48
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_62

    .line 835
    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v1, 0x182b8

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    :cond_62
    :goto_62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 842
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 843
    return-object v0

    .line 845
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 846
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 850
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .line 696
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_12

    .line 697
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 699
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 700
    return-void
.end method

.method updateBoundClientUids()V
    .registers 11

    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 1198
    return-void

    .line 1201
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1202
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1203
    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_53

    .line 1204
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 1205
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1206
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1207
    move v6, v2

    :goto_2c
    if-ge v6, v5, :cond_50

    .line 1208
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1209
    move v8, v2

    :goto_35
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4d

    .line 1210
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget v9, v9, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1209
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 1207
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1203
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1214
    :cond_53
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 1215
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1216
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 4

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 704
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_21

    .line 705
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 706
    iget v2, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1e

    .line 707
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 708
    goto :goto_21

    .line 704
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 711
    :cond_21
    :goto_21
    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .registers 6

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1300
    if-eqz p1, :cond_f

    .line 1301
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1303
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1304
    if-eqz p3, :cond_21

    .line 1305
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p2, "updateOomAdj_activityChange"

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1307
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1308
    return-void

    .line 1307
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1272
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1273
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1274
    return-void

    .line 1273
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    .line 785
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 786
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 789
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 790
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 793
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4a

    .line 794
    const-wide v0, 0x10500000004L

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 795
    const-wide v0, 0x10500000005L

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 797
    :cond_4a
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_60

    .line 798
    const-wide v0, 0x10500000006L

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 800
    :cond_60
    const-wide v0, 0x10800000007L

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 801
    if-ltz p4, :cond_74

    .line 802
    const-wide v0, 0x10500000008L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 804
    :cond_74
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 805
    return-void
.end method
