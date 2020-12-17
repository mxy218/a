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

.field createReason:Ljava/lang/String;

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

.field deathReason:Ljava/lang/String;

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

.field private mFrozen:Z

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
    .registers 15
    .param p1, "_service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"  # Ljava/lang/String;
    .param p4, "_uid"  # I

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessRecord$PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 137
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 173
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 174
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 175
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 176
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 177
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 236
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 262
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 264
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 266
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 277
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 595
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 596
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 597
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p4, :cond_68

    move v0, v1

    goto :goto_69

    :cond_68
    move v0, v2

    :goto_69
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 598
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v3, 0x15f90

    if-lt v0, v3, :cond_7e

    .line 599
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v3, 0x182b7

    if-gt v0, v3, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v2

    :goto_7f
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 600
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 601
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 602
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 603
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 604
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 605
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 606
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 607
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 609
    new-instance v0, Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v2, v0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 611
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 612
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/ProcessRecord;

    .line 91
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method private getShowBackground()Z
    .registers 4

    .line 1751
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

    .line 1732
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 1733
    return v2

    .line 1745
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1746
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1747
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

    .line 1745
    :goto_2c
    return v2
.end method

.method private makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"  # Ljava/lang/String;
    .param p2, "shortMsg"  # Ljava/lang/String;
    .param p3, "longMsg"  # Ljava/lang/String;

    .line 1704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1707
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_1a

    .line 1708
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1712
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 1714
    return-void
.end method


# virtual methods
.method addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 4
    .param p1, "entity"  # Landroid/os/Binder;

    .line 1258
    if-nez p1, :cond_3

    return-void

    .line 1259
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1261
    return-void
.end method

.method addBoundClientUid(I)V
    .registers 4
    .param p1, "clientUid"  # I

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1273
    return-void
.end method

.method addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "sr"  # Lcom/android/server/am/ServiceRecord;

    .line 1299
    if-nez p1, :cond_3

    .line 1300
    return-void

    .line 1302
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1303
    .local v0, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_d
    if-ltz v1, :cond_33

    .line 1304
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1305
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 1306
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1305
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1303
    .end local v2  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3  # "i":I
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1309
    .end local v1  # "conni":I
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1310
    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 13
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "versionCode"  # J
    .param p4, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 964
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 965
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 967
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_2f

    .line 968
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p4

    move-object v2, v0

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 971
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, v2, :cond_34

    .line 972
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_34

    .line 975
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 977
    :cond_34
    :goto_34
    const/4 v1, 0x1

    return v1

    .line 979
    .end local v0  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public appDied()V
    .registers 3

    .line 1427
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1428
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1429
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1430
    return-void

    .line 1429
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
    .registers 36
    .param p1, "activityShortComponentName"  # Ljava/lang/String;
    .param p2, "aInfo"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"  # Ljava/lang/String;
    .param p4, "parentProcess"  # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"  # Z
    .param p6, "annotation"  # Ljava/lang/String;

    .line 1492
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v11, p6

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getDumpingState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1493
    const-string v0, "ActivityManager"

    const-string v1, "Dumping state, ignore ANR!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void

    .line 1497
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1498
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 1500
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;

    invoke-direct {v2, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v11, v2}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1503
    .local v7, "anrTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1504
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1507
    :cond_42
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1509
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_4ab

    if-eqz v0, :cond_83

    .line 1510
    :try_start_52
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1566
    :catchall_75
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-wide/from16 v27, v7

    move-object/from16 v19, v9

    move-object/from16 v24, v10

    move-object v14, v11

    goto/16 :goto_4b7

    .line 1512
    :cond_83
    :try_start_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_4ab

    if-eqz v0, :cond_ac

    .line 1513
    :try_start_89
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_89 .. :try_end_a8} :catchall_75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1515
    :cond_ac
    :try_start_ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_4ab

    if-eqz v0, :cond_d5

    .line 1516
    :try_start_b2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_b2 .. :try_end_d1} :catchall_75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1518
    :cond_d5
    :try_start_d5
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_d7
    .catchall {:try_start_d5 .. :try_end_d7} :catchall_4ab

    if-eqz v0, :cond_fc

    .line 1519
    :try_start_d9
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_d9 .. :try_end_f8} :catchall_75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1521
    :cond_fc
    :try_start_fc
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_fe
    .catchall {:try_start_fc .. :try_end_fe} :catchall_4ab

    if-eqz v0, :cond_123

    .line 1522
    :try_start_100
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_100 .. :try_end_11f} :catchall_75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1528
    :cond_123
    const/4 v0, 0x1

    :try_start_124
    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1531
    const/16 v3, 0x7538

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v1, v6

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const/4 v4, 0x4

    aput-object v11, v1, v4

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1535
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1
    :try_end_15f
    .catchall {:try_start_124 .. :try_end_15f} :catchall_4ab

    if-nez v1, :cond_23c

    .line 1539
    :try_start_161
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1540
    .local v1, "parentPid":I
    if-eqz v15, :cond_170

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    if-lez v3, :cond_170

    .line 1541
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    move v1, v3

    .line 1543
    :cond_170
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v3, :cond_17b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    :cond_17b
    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v3, v4, :cond_18e

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v1, :cond_18e

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    :cond_18e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_197
    if-ltz v3, :cond_23a

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1549
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_22f

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_22f

    .line 1550
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1551
    .local v6, "myPid":I
    if-lez v6, :cond_22c

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v6, v0, :cond_22c

    if-eq v6, v1, :cond_22c

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v6, v0, :cond_22c

    .line 1552
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 1553
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v0, :cond_1e1

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v1

    .end local v1  # "parentPid":I
    .local v20, "parentPid":I
    const-string v1, "Adding persistent proc: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_231

    .end local v20  # "parentPid":I
    .restart local v1  # "parentPid":I
    :cond_1e1
    move/from16 v20, v1

    .end local v1  # "parentPid":I
    .restart local v20  # "parentPid":I
    goto :goto_231

    .line 1555
    .end local v20  # "parentPid":I
    .restart local v1  # "parentPid":I
    :cond_1e4
    move/from16 v20, v1

    .end local v1  # "parentPid":I
    .restart local v20  # "parentPid":I
    iget-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_20c

    .line 1556
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v0, :cond_231

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding likely IME: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_231

    .line 1559
    :cond_20c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1560
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v0, :cond_231

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding ANR proc: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catchall {:try_start_161 .. :try_end_22b} :catchall_75

    goto :goto_231

    .line 1551
    .end local v20  # "parentPid":I
    .restart local v1  # "parentPid":I
    :cond_22c
    move/from16 v20, v1

    .end local v1  # "parentPid":I
    .restart local v20  # "parentPid":I
    goto :goto_231

    .line 1549
    .end local v6  # "myPid":I
    .end local v20  # "parentPid":I
    .restart local v1  # "parentPid":I
    :cond_22f
    move/from16 v20, v1

    .line 1547
    .end local v1  # "parentPid":I
    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v20  # "parentPid":I
    :cond_231
    :goto_231
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v20

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    goto/16 :goto_197

    .end local v20  # "parentPid":I
    .restart local v1  # "parentPid":I
    :cond_23a
    move/from16 v20, v1

    .line 1566
    .end local v1  # "parentPid":I
    .end local v3  # "i":I
    :cond_23c
    :try_start_23c
    monitor-exit v2
    :try_end_23d
    .catchall {:try_start_23c .. :try_end_23d} :catchall_4ab

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1570
    .local v6, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1571
    const-string v0, "ANR in "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    if-eqz v13, :cond_263

    .line 1573
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    :cond_263
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v0, "PID: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    if-eqz v11, :cond_286

    .line 1578
    const-string v0, "Reason: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    :cond_286
    if-eqz v14, :cond_29b

    .line 1581
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 1582
    const-string v0, "Parent: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    :cond_29b
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v5, v0

    .line 1586
    .local v5, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1589
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1590
    .local v1, "nativeProc":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    const/16 v20, 0x0

    if-eqz v2, :cond_2fe

    .line 1591
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2ad
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2ce

    .line 1592
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c9

    .line 1593
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v3, v4, v19

    move-object v1, v4

    .line 1594
    goto :goto_2d0

    .line 1591
    :cond_2c9
    const/16 v19, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2ad

    :cond_2ce
    const/16 v19, 0x0

    .line 1597
    .end local v2  # "i":I
    :goto_2d0
    if-nez v1, :cond_2d5

    move-object/from16 v2, v20

    goto :goto_2d9

    :cond_2d5
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 1598
    .local v2, "pid":[I
    :goto_2d9
    if-eqz v2, :cond_2fa

    .line 1599
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 1600
    array-length v3, v2

    move/from16 v4, v19

    :goto_2e5
    if-ge v4, v3, :cond_2f7

    aget v21, v2, v4

    .line 1601
    .local v21, "i":I
    move-object/from16 v22, v1

    .end local v1  # "nativeProc":[Ljava/lang/String;
    .local v22, "nativeProc":[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    .end local v21  # "i":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v22

    goto :goto_2e5

    .end local v22  # "nativeProc":[Ljava/lang/String;
    .restart local v1  # "nativeProc":[Ljava/lang/String;
    :cond_2f7
    move-object/from16 v22, v1

    .end local v1  # "nativeProc":[Ljava/lang/String;
    .restart local v22  # "nativeProc":[Ljava/lang/String;
    goto :goto_2fc

    .line 1598
    .end local v22  # "nativeProc":[Ljava/lang/String;
    .restart local v1  # "nativeProc":[Ljava/lang/String;
    :cond_2fa
    move-object/from16 v22, v1

    .line 1604
    .end local v1  # "nativeProc":[Ljava/lang/String;
    .end local v2  # "pid":[I
    .restart local v22  # "nativeProc":[Ljava/lang/String;
    :goto_2fc
    move-object v4, v0

    goto :goto_30a

    .line 1605
    .end local v22  # "nativeProc":[Ljava/lang/String;
    .restart local v1  # "nativeProc":[Ljava/lang/String;
    :cond_2fe
    const/16 v19, 0x0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    move-object/from16 v22, v1

    .line 1610
    .end local v0  # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1  # "nativeProc":[Ljava/lang/String;
    .local v4, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22  # "nativeProc":[Ljava/lang/String;
    :goto_30a
    nop

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v0

    if-eqz v0, :cond_314

    move-object/from16 v0, v20

    goto :goto_315

    :cond_314
    move-object v0, v5

    :goto_315
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1

    if-eqz v1, :cond_31e

    move-object/from16 v1, v20

    goto :goto_31f

    :cond_31e
    move-object v1, v9

    .line 1610
    :goto_31f
    invoke-static {v10, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v21

    .line 1614
    .local v21, "tracesFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1615
    .local v1, "cpuInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_34e

    .line 1616
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1617
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 1618
    :try_start_334
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1619
    monitor-exit v2
    :try_end_33e
    .catchall {:try_start_334 .. :try_end_33e} :catchall_34b

    .line 1620
    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v1

    goto :goto_350

    .line 1619
    :catchall_34b
    move-exception v0

    :try_start_34c
    monitor-exit v2
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_34b

    throw v0

    .line 1615
    :cond_34e
    move-object/from16 v23, v1

    .line 1624
    .end local v1  # "cpuInfo":Ljava/lang/String;
    .local v23, "cpuInfo":Ljava/lang/String;
    :goto_350
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    if-nez v21, :cond_368

    .line 1629
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 1632
    :cond_368
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1633
    if-nez v13, :cond_372

    const-string/jumbo v0, "unknown"

    goto :goto_373

    :cond_372
    move-object v0, v13

    .line 1635
    :goto_373
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_383

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_380

    .line 1636
    const/16 v19, 0x2

    goto :goto_384

    .line 1637
    :cond_380
    const/16 v19, 0x1

    goto :goto_384

    .line 1638
    :cond_383
    nop

    .line 1639
    :goto_384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-eqz v1, :cond_38d

    .line 1640
    const/16 v24, 0x2

    goto :goto_38f

    .line 1641
    :cond_38d
    const/16 v24, 0x1

    .line 1642
    :goto_38f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v25

    .line 1643
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_39a

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_39c

    :cond_39a
    const-string v1, ""

    :goto_39c
    move-object/from16 v26, v1

    .line 1632
    const/16 v1, 0x4f

    move-object/from16 v17, v4

    .end local v4  # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v17, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v4, v0

    move-object/from16 v18, v5

    .end local v5  # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v18, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v5, p6

    move-object/from16 v16, v6

    const/4 v0, 0x2

    .end local v6  # "info":Ljava/lang/StringBuilder;
    .local v16, "info":Ljava/lang/StringBuilder;
    move/from16 v6, v19

    move-wide/from16 v27, v7

    .end local v7  # "anrTime":J
    .local v27, "anrTime":J
    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v19, v9

    .end local v9  # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v19, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v9, v26

    invoke-static/range {v1 .. v9}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)I

    .line 1644
    if-eqz v15, :cond_3c1

    .line 1645
    iget-object v1, v15, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v7, v1

    goto :goto_3c3

    :cond_3c1
    move-object/from16 v7, v20

    .line 1646
    .local v7, "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_3c3
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v20, 0x0

    const-string v2, "anr"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, v23

    move-object/from16 v24, v10

    .end local v10  # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, v21

    move-object v14, v11

    move-object/from16 v11, v20

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1651
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_407

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1652
    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_407

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1653
    const-string v2, "com.tencent.mm:tools"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_407

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1654
    const-string v2, "com.meizu.flyme.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40f

    .line 1655
    :cond_407
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 1659
    :cond_40f
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;

    invoke-direct {v3, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;-><init>(Lcom/android/server/am/ProcessRecord;)V

    new-instance v4, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;

    invoke-direct {v4, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_426

    .line 1665
    return-void

    .line 1668
    :cond_426
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_429
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1671
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_43d

    .line 1672
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1675
    :cond_43d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_459

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_459

    .line 1679
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->hook_freezeAnrKillLogOut(Lcom/android/server/am/ProcessRecord;)V

    .line 1682
    const-string v0, "bg anr"

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1683
    monitor-exit v1
    :try_end_455
    .catchall {:try_start_429 .. :try_end_455} :catchall_49f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1687
    :cond_459
    nop

    .line 1688
    if-eqz v14, :cond_46e

    :try_start_45c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_470

    :cond_46e
    const-string v2, "ANR"

    :goto_470
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1687
    invoke-direct {v12, v13, v2, v3}, Lcom/android/server/am/ProcessRecord;->makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_496

    .line 1694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1695
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 1696
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_485
    .catchall {:try_start_45c .. :try_end_485} :catchall_49f

    move-object/from16 v3, p2

    move/from16 v4, p5

    :try_start_489
    invoke-direct {v0, v12, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1698
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_49a

    .line 1692
    .end local v2  # "msg":Landroid/os/Message;
    :cond_496
    move-object/from16 v3, p2

    move/from16 v4, p5

    .line 1700
    :goto_49a
    monitor-exit v1
    :try_end_49b
    .catchall {:try_start_489 .. :try_end_49b} :catchall_4a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1701
    return-void

    .line 1700
    :catchall_49f
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, p5

    :goto_4a4
    :try_start_4a4
    monitor-exit v1
    :try_end_4a5
    .catchall {:try_start_4a4 .. :try_end_4a5} :catchall_4a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4a9
    move-exception v0

    goto :goto_4a4

    .line 1566
    .end local v16  # "info":Ljava/lang/StringBuilder;
    .end local v17  # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18  # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v19  # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v21  # "tracesFile":Ljava/io/File;
    .end local v22  # "nativeProc":[Ljava/lang/String;
    .end local v23  # "cpuInfo":Ljava/lang/String;
    .end local v24  # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27  # "anrTime":J
    .local v7, "anrTime":J
    .restart local v9  # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10  # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_4ab
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-wide/from16 v27, v7

    move-object/from16 v19, v9

    move-object/from16 v24, v10

    move-object v14, v11

    .end local v7  # "anrTime":J
    .end local v9  # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10  # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19  # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v24  # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27  # "anrTime":J
    :goto_4b7
    :try_start_4b7
    monitor-exit v2
    :try_end_4b8
    .catchall {:try_start_4b7 .. :try_end_4b8} :catchall_4bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4bc
    move-exception v0

    goto :goto_4b7
.end method

.method clearBoundClientUids()V
    .registers 3

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1315
    return-void
.end method

.method public clearProfilerIfNeeded()V
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1340
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1341
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1342
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eq v1, p0, :cond_25

    goto :goto_2f

    .line 1345
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearProfilerLocked()V

    .line 1346
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1347
    return-void

    .line 1343
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1346
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
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 341
    .local v0, "nowUptime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 343
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_30

    .line 344
    const-string v2, " ISOLATED uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 346
    :cond_30
    const-string v2, " gids={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    const-string v3, ", "

    if-eqz v2, :cond_50

    .line 348
    const/4 v2, 0x0

    .local v2, "gi":I
    :goto_3c
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_50

    .line 349
    if-eqz v2, :cond_46

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_46
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 354
    .end local v2  # "gi":I
    :cond_50
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRequiredAbi="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    const-string v4, " instructionSet="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_83

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "class="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    :cond_83
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_99

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "manageSpaceActivityName="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    :cond_99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "dir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string v4, " publicDir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v4, " data="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageList={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ca
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e3

    .line 370
    if-lez v4, :cond_d7

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    :cond_d7
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    .line 373
    .end local v4  # "i":I
    :cond_e3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v4, :cond_112

    .line 375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageDependencies={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_f4
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_10f

    .line 377
    if-lez v4, :cond_101

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    :cond_101
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_f4

    .line 380
    .end local v4  # "i":I
    :cond_10f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    :cond_112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_131

    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mInstr="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 386
    :cond_131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thread="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " starting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastActivityTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 391
    const-string v2, " lastPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 393
    const-string v2, " pssStatType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    const-string v2, " nextPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 396
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "adjSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 398
    const-string v2, " lruSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    const-string v2, " lastPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 400
    const-string v2, " lastSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 401
    const-string v2, " lastCachedPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 402
    const-string v2, " lastCachedSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 403
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "procStateMemTracker: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 407
    const-string v2, " empty="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 408
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_20f

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "serviceb="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 410
    const-string v2, " serviceHighRam="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 412
    :cond_20f
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v2, :cond_22b

    .line 413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notCachedSinceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 414
    const-string v2, " initialIdlePss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 416
    :cond_22b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 417
    const-string v2, " curRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 418
    const-string v2, " setRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 419
    const-string v2, " cur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 420
    const-string v2, " set="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCompactTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 422
    const-string v2, " lastCompactAction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 424
    const-string v2, " setSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 425
    const-string v2, " systemNoUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 426
    const-string v2, " trimMemoryLevel="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 427
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 428
    const-string v2, " mRepProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 429
    const-string v2, " pssProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 430
    const-string v2, " setProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 431
    const-string v2, " lastStateTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 433
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 434
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v2, :cond_2ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    if-nez v2, :cond_2ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v2, :cond_2ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_31a

    .line 435
    :cond_2ef
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasShownUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 436
    const-string v2, " pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 437
    const-string v2, " hasAboveClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 438
    const-string v2, " treatLikeActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 440
    :cond_31a
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_322

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v2, :cond_343

    .line 441
    :cond_322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connectionGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 442
    const-string v2, " Importance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 443
    const-string v2, " Service="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 445
    :cond_343
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    if-nez v2, :cond_353

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-nez v2, :cond_353

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_378

    .line 446
    :cond_353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasTopUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 447
    const-string v2, " hasOverlayUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 448
    const-string v2, " runningRemoteAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 450
    :cond_378
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-nez v2, :cond_380

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_398

    .line 451
    :cond_380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mHasForegroundServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 452
    const-string v2, " forcingToImportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    :cond_398
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_3a4

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3dd

    .line 455
    :cond_3a4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reportedInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3c6

    .line 458
    const-string v2, " time="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 461
    :cond_3c6
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3da

    .line 462
    const-string v2, " fgInteractionTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 465
    :cond_3da
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 467
    :cond_3dd
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_3e5

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v2, :cond_3fd

    .line 468
    :cond_3e5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 469
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 471
    :cond_3fd
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    const-string v5, ")"

    if-nez v2, :cond_40b

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    if-nez v2, :cond_40b

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v2, :cond_42f

    .line 472
    :cond_40b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasClientActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 473
    const-string v2, " foregroundActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 474
    const-string v2, " (rep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    :cond_42f
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_446

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastProviderTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 479
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 481
    :cond_446
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_45d

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastTopTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 484
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 486
    :cond_45d
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v2, :cond_46e

    .line 487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 489
    :cond_46e
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v2, :cond_480

    .line 490
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 492
    :cond_480
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 494
    const-string v7, "MOUNT_EXTERNAL_"

    invoke-static {v2, v7, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0xb

    if-le v2, v6, :cond_4d9

    .line 496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 497
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_4cb

    .line 498
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 501
    :cond_4cb
    const-string v2, " whenUnimportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 503
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 505
    :cond_4d9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastRequestedGc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 507
    const-string v2, " lastLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 509
    const-string v2, " reportLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v2, :cond_507

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_507

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_529

    .line 511
    :cond_507
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 512
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    :cond_529
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez v2, :cond_541

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    if-nez v2, :cond_541

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v2, :cond_541

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    if-nez v2, :cond_541

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v2, :cond_541

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v2, :cond_594

    .line 517
    :cond_541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 518
    const-string v2, " mCrashing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 519
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 520
    const-string v3, " mNotResponding="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 521
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 522
    const-string v2, " bad="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 525
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_591

    .line 526
    const-string v2, " errorReportReceiver="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    :cond_591
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 531
    :cond_594
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v2, :cond_5a6

    .line 532
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "whitelistManager="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 534
    :cond_5a6
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_5ae

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_5ce

    .line 535
    :cond_5ae
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    :cond_5ce
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const-string v3, "  - "

    if-lez v2, :cond_600

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Services:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5e6
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_600

    .line 543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e6

    .line 546
    .end local v2  # "i":I
    :cond_600
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_633

    .line 547
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Executing Services (fg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_619
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_633

    .line 550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_619

    .line 553
    .end local v2  # "i":I
    :cond_633
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_65e

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_644
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_65e

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_644

    .line 559
    .end local v2  # "i":I
    :cond_65e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_69c

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Published Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_66f
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_69c

    .line 562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    -> "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_66f

    .line 566
    .end local v2  # "i":I
    :cond_69c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6cd

    .line 567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connected Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_6ad
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6cd

    .line 569
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_6ad

    .line 572
    .end local v2  # "i":I
    :cond_6cd
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f8

    .line 573
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Current Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_6de
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_6f8

    .line 575
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_6de

    .line 578
    .end local v2  # "i":I
    :cond_6f8
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_723

    .line 579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_709
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_723

    .line 581
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_709

    .line 584
    .end local v2  # "i":I
    :cond_723
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_74e

    .line 585
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Background activity start whitelist tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_734
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_74e

    .line 587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_734

    .line 591
    .end local v2  # "i":I
    :cond_74e
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 10
    .param p1, "newState"  # I

    .line 992
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    if-le v0, p1, :cond_35

    .line 993
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 995
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 996
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_14
    if-ltz v0, :cond_35

    .line 997
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 998
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 999
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1000
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 997
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 996
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 1003
    .end local v0  # "ipkg":I
    :cond_35
    return-void
.end method

.method getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .registers 2

    .line 1325
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCurProcState()I
    .registers 2

    .line 1087
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .registers 2

    .line 1334
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .registers 2

    .line 1095
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .registers 2

    .line 1078
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .registers 3

    .line 1227
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForegroundServiceTypes()I
    .registers 2

    .line 1165
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

    .line 1452
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method getInteractionEventTime()J
    .registers 3

    .line 1218
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

    .line 1478
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 5

    .line 1045
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1046
    .local v0, "size":I
    if-nez v0, :cond_a

    .line 1047
    const/4 v1, 0x0

    return-object v1

    .line 1049
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    .line 1050
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 1051
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1053
    .end local v2  # "i":I
    :cond_20
    return-object v1
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1058
    .local v0, "size":I
    if-nez v0, :cond_a

    .line 1059
    const/4 v1, 0x0

    return-object v1

    .line 1061
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 1063
    new-instance v3, Landroid/content/pm/VersionedPackage;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    invoke-direct {v3, v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1065
    .end local v2  # "i":I
    :cond_31
    return-object v1
.end method

.method public getProcessClassEnum()I
    .registers 3

    .line 1456
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_8

    .line 1457
    const/4 v0, 0x3

    return v0

    .line 1459
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e

    .line 1460
    const/4 v0, 0x0

    return v0

    .line 1462
    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    .line 1463
    :cond_16
    nop

    .line 1462
    :goto_17
    return v1
.end method

.method getReportedForegroundServiceTypes()I
    .registers 2

    .line 1169
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    return v0
.end method

.method getReportedProcState()I
    .registers 2

    .line 1110
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .line 983
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 984
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_d

    .line 985
    const/16 v0, 0x320

    return v0

    .line 988
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method getWhenUnimportant()J
    .registers 3

    .line 1236
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .registers 2

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method hasActivities()Z
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    return v0
.end method

.method hasActivitiesOrRecentTasks()Z
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasClientActivities()Z
    .registers 2

    .line 1191
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .registers 2

    .line 1182
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    return v0
.end method

.method hasLocationForegroundServices()Z
    .registers 2

    .line 1160
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

    .line 1209
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .registers 2

    .line 1365
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    return v0
.end method

.method hasRecentTasks()Z
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasTopUi()Z
    .registers 2

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    return v0
.end method

.method isCrashing()Z
    .registers 2

    .line 1119
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .registers 2

    .line 1245
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return v0
.end method

.method isFrozen()Z
    .registers 2

    .line 1765
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mFrozen:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 729
    return v1

    .line 732
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 733
    .local v0, "servicesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_23

    .line 734
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 735
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_20

    .line 736
    return v1

    .line 733
    .end local v3  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 739
    .end local v2  # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method isMonitorCpuUsage()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .registers 2

    .line 1128
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    return v0
.end method

.method isPersistent()Z
    .registers 2

    .line 1137
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 1392
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    return v0
.end method

.method isSilentAnr()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1472
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

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return v0
.end method

.method kill(Ljava/lang/String;Z)V
    .registers 14
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "noisy"  # Z

    .line 820
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    .line 821
    .local v0, "tmp_uid":I
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "ActivityManager"

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_2c

    if-ltz v0, :cond_2c

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warn !!! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " maybe has dead, now the pid\'s uid <= 1000,so couldn\'t kill it !!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 825
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_eb

    .line 826
    const-wide/16 v3, 0x40

    const-string/jumbo v1, "kill"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 827
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    .line 828
    .local v1, "ux_perf":Landroid/util/BoostFramework;
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v5, :cond_7d

    if-nez p2, :cond_4d

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v5, v6, :cond_7d

    .line 829
    :cond_4d
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Killing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (adj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 829
    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 833
    :cond_7d
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v2, :cond_c1

    .line 834
    const/16 v2, 0x7547

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object p1, v8, v5

    invoke-static {v2, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 835
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 838
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    goto :goto_c3

    .line 841
    :cond_c1
    iput-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 843
    :goto_c3
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_cb

    .line 844
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 845
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 847
    :cond_cb
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    if-nez v2, :cond_e0

    .line 848
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5, v7, v2, v7}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 849
    const/16 v2, 0x1093

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_e4

    .line 851
    :cond_e0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    sput-boolean v7, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    .line 855
    :goto_e4
    if-eqz p1, :cond_e8

    .line 856
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->deathReason:Ljava/lang/String;

    .line 859
    :cond_e8
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 861
    .end local v1  # "ux_perf":Landroid/util/BoostFramework;
    :cond_eb
    return-void
.end method

.method public synthetic lambda$appNotResponding$0$ProcessRecord()V
    .registers 3

    .line 1500
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$1$ProcessRecord()V
    .registers 3

    .line 1659
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$2$ProcessRecord()V
    .registers 3

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1662
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1663
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1664
    return-void

    .line 1663
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
    .registers 14
    .param p1, "_thread"  # Landroid/app/IApplicationThread;
    .param p2, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x182

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_150

    .line 636
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 637
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_ec

    .line 638
    const/4 v3, -0x1

    .line 639
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 638
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 640
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipkg":I
    :goto_c9
    if-ltz v2, :cond_e9

    .line 641
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 642
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    .line 643
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 644
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 641
    invoke-static/range {v3 .. v9}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 640
    add-int/lit8 v2, v2, -0x1

    goto :goto_c9

    .line 646
    .end local v2  # "ipkg":I
    :cond_e9
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 648
    :cond_ec
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 650
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_107
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_145

    .line 652
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 653
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_122

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v1, :cond_122

    .line 654
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 656
    :cond_122
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v4, p2

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 658
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_142

    .line 659
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 651
    .end local v3  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_142
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 664
    .end local v2  # "i":I
    :cond_145
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->createReason:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/am/AmsInjector;->addProcess(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    .end local v1  # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    :cond_150
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 668
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 669
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    goto :goto_b

    .line 957
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 937
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2a

    .line 939
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 940
    :cond_2a
    if-eqz v1, :cond_34

    .line 941
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 943
    :cond_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :goto_37
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_59

    .line 947
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 950
    :cond_59
    if-eqz v1, :cond_63

    .line 951
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 953
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13
    .param p1, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x183

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 685
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 686
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 687
    .local v2, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v2, :cond_116

    .line 688
    nop

    .line 689
    const/4 v4, -0x1

    .line 690
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 689
    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 691
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_ce
    if-ltz v3, :cond_ee

    .line 692
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 693
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v7

    .line 694
    const/4 v8, -0x1

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 695
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 692
    invoke-static/range {v4 .. v10}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 691
    add-int/lit8 v3, v3, -0x1

    goto :goto_ce

    .line 697
    .end local v3  # "ipkg":I
    :cond_ee
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 699
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 700
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f4
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v4

    if-ge v3, v4, :cond_116

    .line 701
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    .line 702
    .local v4, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v5, :cond_10f

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v5, v2, :cond_10f

    .line 703
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 705
    :cond_10f
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 706
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 700
    .end local v4  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 709
    .end local v3  # "i":I
    :cond_116
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1, "adj"  # I

    .line 772
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_29

    .line 778
    if-gez p1, :cond_7

    goto :goto_29

    .line 780
    :cond_7
    const/16 v0, 0x64

    if-ge p1, v0, :cond_e

    .line 781
    const/16 p1, 0x64

    goto :goto_29

    .line 782
    :cond_e
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_15

    .line 783
    const/16 p1, 0xc8

    goto :goto_29

    .line 784
    :cond_15
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_1c

    .line 785
    const/16 p1, 0xfa

    goto :goto_29

    .line 786
    :cond_1c
    const/16 v0, 0x384

    if-ge p1, v0, :cond_23

    .line 787
    const/16 p1, 0x384

    goto :goto_29

    .line 788
    :cond_23
    const/16 v0, 0x3e7

    if-ge p1, v0, :cond_29

    .line 789
    add-int/lit8 p1, p1, 0x1

    .line 792
    :cond_29
    :goto_29
    return p1
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .registers 9
    .param p1, "topProcessState"  # I
    .param p2, "setProfileProc"  # Z
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "versionCode"  # J

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1409
    if-eqz p2, :cond_12

    .line 1410
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1412
    :cond_12
    if-eqz p3, :cond_1b

    .line 1413
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1417
    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1419
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1420
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1421
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1422
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1423
    return-void

    .line 1422
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 4
    .param p1, "entity"  # Landroid/os/Binder;

    .line 1264
    if-nez p1, :cond_3

    return-void

    .line 1265
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 1267
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 1266
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1268
    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 21
    .param p1, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 1009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    .line 1010
    .local v1, "N":I
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v3, 0x1

    if-eqz v2, :cond_a1

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1012
    .local v10, "now":J
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v5, -0x1

    .line 1013
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1012
    move-wide v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 1014
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "ipkg":I
    :goto_27
    if-ltz v2, :cond_49

    .line 1015
    const/4 v12, 0x3

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1016
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v15

    .line 1017
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1018
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1015
    move-wide/from16 v17, v4

    invoke-static/range {v12 .. v18}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1014
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1020
    .end local v2  # "ipkg":I
    :cond_49
    if-eq v1, v3, :cond_bb

    .line 1021
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v1, :cond_66

    .line 1022
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1023
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_63

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_63

    .line 1024
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 1021
    .end local v3  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1028
    .end local v2  # "i":I
    :cond_66
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1029
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1031
    .local v2, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v12, p1

    move-object v13, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1033
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1034
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_bb

    .line 1035
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_bb

    .line 1038
    .end local v2  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v10  # "now":J
    :cond_a1
    if-eq v1, v3, :cond_bb

    .line 1039
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1040
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    goto :goto_bc

    .line 1038
    :cond_bb
    :goto_bb
    nop

    .line 1042
    :goto_bc
    return-void
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"  # Ljava/lang/String;

    .line 798
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_49

    .line 799
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_49

    .line 800
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 801
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "scheduleCrash: trying to crash system process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void

    .line 804
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 806
    .local v0, "ident":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_28
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 812
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    goto :goto_49

    .line 812
    :catchall_26
    move-exception v2

    goto :goto_45

    .line 807
    :catch_28
    move-exception v2

    .line 810
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCrash for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_26

    .end local v2  # "e":Landroid/os/RemoteException;
    goto :goto_22

    .line 812
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 816
    .end local v0  # "ident":J
    :cond_49
    :goto_49
    return-void
.end method

.method setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 7
    .param p1, "instr"  # Lcom/android/server/am/ActiveInstrumentation;

    .line 1318
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1319
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 1320
    .local v2, "isInstrumenting":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_12

    iget-boolean v4, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v4, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZZ)V

    .line 1322
    return-void
.end method

.method setCrashing(Z)V
    .registers 3
    .param p1, "crashing"  # Z

    .line 1114
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    .line 1115
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 1116
    return-void
.end method

.method setCurProcState(I)V
    .registers 4
    .param p1, "curProcState"  # I

    .line 1082
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 1084
    return-void
.end method

.method setCurRawAdj(I)V
    .registers 4
    .param p1, "curRawAdj"  # I

    .line 1329
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 1330
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 1331
    return-void
.end method

.method setCurRawProcState(I)V
    .registers 2
    .param p1, "curRawProcState"  # I

    .line 1091
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 1092
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .registers 3
    .param p1, "curSchedGroup"  # I

    .line 1073
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 1075
    return-void
.end method

.method setDebugging(Z)V
    .registers 3
    .param p1, "debugging"  # Z

    .line 1240
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1241
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    .line 1242
    return-void
.end method

.method setFgInteractionTime(J)V
    .registers 4
    .param p1, "fgInteractionTime"  # J

    .line 1222
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    .line 1223
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 1224
    return-void
.end method

.method setFrozen(Z)V
    .registers 3
    .param p1, "mFrozen"  # Z

    .line 1760
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mFrozen:Z

    .line 1761
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setFrozen(Z)V

    .line 1762
    return-void
.end method

.method setHasClientActivities(Z)V
    .registers 3
    .param p1, "hasClientActivities"  # Z

    .line 1186
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    .line 1187
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    .line 1188
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .registers 3
    .param p1, "hasForegroundActivities"  # Z

    .line 1177
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundActivities(Z)V

    .line 1179
    return-void
.end method

.method setHasForegroundServices(ZI)V
    .registers 4
    .param p1, "hasForegroundServices"  # Z
    .param p2, "fgServiceTypes"  # I

    .line 1150
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    .line 1151
    iput p2, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    .line 1152
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    .line 1153
    return-void
.end method

.method setHasOverlayUi(Z)V
    .registers 3
    .param p1, "hasOverlayUi"  # Z

    .line 1204
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 1206
    return-void
.end method

.method setHasTopUi(Z)V
    .registers 3
    .param p1, "hasTopUi"  # Z

    .line 1195
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 1197
    return-void
.end method

.method setInteractionEventTime(J)V
    .registers 4
    .param p1, "interactionEventTime"  # J

    .line 1213
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 1215
    return-void
.end method

.method setNotResponding(Z)V
    .registers 3
    .param p1, "notResponding"  # Z

    .line 1123
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    .line 1124
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 1125
    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 4
    .param p1, "pendingUiClean"  # Z

    .line 1358
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1359
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    .line 1360
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 1361
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1362
    return-void

    .line 1361
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4
    .param p1, "newState"  # I

    .line 1370
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1371
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1373
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1374
    return-void

    .line 1373
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setPersistent(Z)V
    .registers 3
    .param p1, "persistent"  # Z

    .line 1132
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1133
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    .line 1134
    return-void
.end method

.method public setPid(I)V
    .registers 4
    .param p1, "_pid"  # I

    .line 615
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 616
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    .line 618
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 619
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 620
    return-void
.end method

.method setReportedForegroundServiceTypes(I)V
    .registers 2
    .param p1, "foregroundServiceTypes"  # I

    .line 1173
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    .line 1174
    return-void
.end method

.method setReportedProcState(I)V
    .registers 10
    .param p1, "repProcState"  # I

    .line 1099
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_a
    if-ltz v0, :cond_2b

    .line 1101
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1102
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1103
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1104
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1101
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1100
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1106
    .end local v0  # "ipkg":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 1107
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 3
    .param p1, "requiredAbi"  # Ljava/lang/String;

    .line 1141
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 6
    .param p1, "runningRemoteAnimation"  # Z

    .line 1434
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 1435
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "system can\'t run remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return-void

    .line 1438
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1439
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-ne v1, p1, :cond_20

    .line 1440
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1442
    :cond_20
    :try_start_20
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    .line 1443
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_46

    .line 1444
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting runningRemoteAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_46
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    const-string/jumbo v3, "updateOomAdj_uiVisibility"

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 1448
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1449
    return-void

    .line 1448
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V
    .registers 6
    .param p1, "startUid"  # I
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "seInfo"  # Ljava/lang/String;
    .param p4, "startTime"  # J

    .line 332
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 333
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 334
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    .line 335
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->startTime:J

    .line 336
    return-void
.end method

.method setUsingWrapper(Z)V
    .registers 3
    .param p1, "usingWrapper"  # Z

    .line 1249
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1250
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    .line 1251
    return-void
.end method

.method setWhenUnimportant(J)V
    .registers 4
    .param p1, "whenUnimportant"  # J

    .line 1231
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    .line 1232
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 1233
    return-void
.end method

.method startAppProblemLocked()V
    .registers 8

    .line 1719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1721
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2a

    aget v3, v0, v2

    .line 1722
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_27

    .line 1723
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1721
    .end local v3  # "userId":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1727
    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1728
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 889
    return-object v0

    .line 891
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"  # Ljava/lang/StringBuilder;

    .line 897
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_22

    .line 902
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 904
    :cond_22
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 907
    .local v0, "appId":I
    if-lt v0, v1, :cond_41

    .line 908
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 911
    :cond_41
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    :goto_49
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_63

    .line 915
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 916
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 919
    .end local v0  # "appId":I
    :cond_63
    :goto_63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 923
    return-object v0

    .line 925
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 926
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 930
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unlinkDeathRecipient()V
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3a

    .line 744
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 747
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/AmsInjector;->removeProcess(ILjava/lang/String;)V

    .line 751
    new-instance v0, Landroid/scene/Scene;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v4, "SystemAppDied"

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 752
    .local v0, "scene":Landroid/scene/Scene;
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 753
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 754
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 757
    .end local v0  # "scene":Landroid/scene/Scene;
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 758
    return-void
.end method

.method updateBoundClientUids()V
    .registers 10

    .line 1276
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 1278
    return-void

    .line 1281
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1282
    .local v0, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1283
    .local v1, "K":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    if-ge v2, v1, :cond_52

    .line 1284
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 1285
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1286
    .local v3, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1287
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "conni":I
    :goto_2b
    if-ge v5, v4, :cond_4f

    .line 1288
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1289
    .local v6, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4c

    .line 1290
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget v8, v8, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1289
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 1287
    .end local v6  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7  # "i":I
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1283
    .end local v3  # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4  # "N":I
    .end local v5  # "conni":I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1294
    .end local v2  # "j":I
    :cond_52
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 1295
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1296
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 5

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 762
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_21

    .line 763
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 764
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1e

    .line 765
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 766
    goto :goto_21

    .line 762
    .end local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 769
    .end local v0  # "i":I
    :cond_21
    :goto_21
    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .registers 7
    .param p1, "updateServiceConnectionActivities"  # Z
    .param p2, "activityChange"  # Z
    .param p3, "updateOomAdj"  # Z

    .line 1379
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1380
    if-eqz p1, :cond_f

    .line 1381
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1383
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1384
    if-eqz p3, :cond_21

    .line 1385
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_activityChange"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1387
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1388
    return-void

    .line 1387
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1352
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1353
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1354
    return-void

    .line 1353
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
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 865
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 866
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "lruIndex"  # I

    .line 869
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 870
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 871
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 873
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_4a

    .line 874
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 875
    const-wide v2, 0x10500000005L

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 877
    :cond_4a
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_60

    .line 878
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 880
    :cond_60
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 881
    if-ltz p4, :cond_74

    .line 882
    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 884
    :cond_74
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 885
    return-void
.end method
