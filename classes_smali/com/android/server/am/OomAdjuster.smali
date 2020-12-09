.class public final Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final OOM_ADJ_REASON_WHITELIST:Ljava/lang/String; = "updateOomAdj_whitelistChange"

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mAppCompact:Lcom/android/server/am/AppCompactor;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .registers 7

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 135
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 136
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 137
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 143
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 149
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 160
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 640
    new-instance v1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 166
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 167
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 168
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 170
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 171
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 172
    new-instance p1, Lcom/android/server/am/AppCompactor;

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p1, p2}, Lcom/android/server/am/AppCompactor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 176
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p2, "OomAdjuster"

    const/16 p3, -0xa

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 178
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 179
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p2

    const/4 p3, 0x5

    invoke-static {p2, p3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 180
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object p3, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;

    invoke-direct {p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 198
    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1681
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const-string v3, "OomAdjuster"

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_18

    .line 1684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    .line 1687
    :cond_18
    nop

    .line 1690
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->useCompaction()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_92

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_92

    .line 1692
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v4, :cond_60

    .line 1696
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0xc8

    if-gt v0, v4, :cond_46

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v4, 0x2bc

    if-eq v0, v4, :cond_40

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v4, 0x258

    if-ne v0, v4, :cond_46

    .line 1699
    :cond_40
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_92

    .line 1700
    :cond_46
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0x3e7

    const/16 v5, 0x384

    if-lt v0, v5, :cond_52

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v4, :cond_92

    :cond_52
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_92

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v4, :cond_92

    .line 1704
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_92

    .line 1706
    :cond_60
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_78

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_78

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1712
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1713
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_92

    .line 1714
    :cond_78
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_92

    .line 1715
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_92

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1717
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1718
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 1722
    :cond_92
    :goto_92
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v5, ": "

    const-string v14, "ActivityManager"

    if-eq v0, v4, :cond_e9

    .line 1723
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v4, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1724
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v4, :cond_e1

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " adj "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1727
    invoke-virtual {v1, v14, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :cond_e1
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1730
    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    .line 1733
    :cond_e9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v0

    .line 1734
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v15, " to "

    const/4 v7, 0x0

    if-eq v4, v0, :cond_203

    .line 1735
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1736
    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1737
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, v8, :cond_124

    .line 1738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting sched group of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1740
    invoke-virtual {v1, v14, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_124
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v5, :cond_13c

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13c

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v5, :cond_13c

    .line 1744
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {v2, v0, v13}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1745
    move v13, v7

    goto/16 :goto_204

    .line 1748
    :cond_13c
    const/4 v5, 0x3

    if-eqz v0, :cond_14c

    if-eq v0, v13, :cond_14a

    if-eq v0, v5, :cond_148

    const/4 v6, 0x4

    if-eq v0, v6, :cond_148

    .line 1760
    const/4 v6, -0x1

    goto :goto_14e

    .line 1754
    :cond_148
    const/4 v6, 0x5

    .line 1755
    goto :goto_14e

    .line 1757
    :cond_14a
    const/4 v6, 0x7

    .line 1758
    goto :goto_14e

    .line 1750
    :cond_14c
    nop

    .line 1751
    move v6, v7

    .line 1763
    :goto_14e
    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v7, v13, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1766
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1a0

    .line 1768
    if-eq v4, v5, :cond_203

    .line 1769
    :try_start_160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1770
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_18b

    .line 1772
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    .line 1773
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 1774
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_203

    .line 1775
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto/16 :goto_203

    .line 1788
    :cond_18b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v3, -0xa

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1789
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_194} :catch_19e

    if-eqz v0, :cond_203

    .line 1791
    :try_start_196
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_196 .. :try_end_19b} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_19b} :catch_19e

    goto :goto_19d

    .line 1793
    :catch_19c
    move-exception v0

    .line 1795
    :goto_19d
    goto :goto_203

    .line 1827
    :catch_19e
    move-exception v0

    goto :goto_203

    .line 1799
    :cond_1a0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_203

    if-eq v0, v5, :cond_203

    .line 1801
    :try_start_1a5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1802
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b0} :catch_19e

    if-eqz v0, :cond_1f4

    .line 1805
    :try_start_1b2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 1806
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1807
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_1c7

    .line 1808
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b2 .. :try_end_1c7} :catch_1de
    .catch Ljava/lang/SecurityException; {:try_start_1b2 .. :try_end_1c7} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c7} :catch_19e

    .line 1817
    :cond_1c7
    :goto_1c7
    goto :goto_1f9

    .line 1815
    :catch_1c8
    move-exception v0

    .line 1816
    :try_start_1c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    .line 1811
    :catch_1de
    move-exception v0

    .line 1812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    .line 1820
    :cond_1f4
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1823
    :goto_1f9
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_203

    .line 1824
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v3, -0x4

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_203} :catch_19e

    .line 1834
    :cond_203
    :goto_203
    const/4 v13, 0x1

    :goto_204
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_214

    .line 1835
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    .line 1836
    const/4 v8, 0x1

    goto :goto_215

    .line 1834
    :cond_214
    move v8, v7

    .line 1838
    :goto_215
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_235

    .line 1839
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    .line 1840
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_235

    .line 1847
    :try_start_22a
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_233
    .catch Landroid/os/RemoteException; {:try_start_22a .. :try_end_233} :catch_234

    .line 1849
    goto :goto_235

    .line 1848
    :catch_234
    move-exception v0

    .line 1852
    :cond_235
    :goto_235
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_2aa

    .line 1853
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_24e

    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    goto/16 :goto_2af

    .line 1881
    :cond_24e
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_27a

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_274

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    .line 1882
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_26e

    goto :goto_27a

    :cond_26e
    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    goto :goto_2cb

    .line 1881
    :cond_274
    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    goto :goto_2cb

    .line 1884
    :cond_27a
    :goto_27a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2a4

    .line 1885
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1887
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 1885
    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_2cb

    .line 1884
    :cond_2a4
    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    goto :goto_2cb

    .line 1852
    :cond_2aa
    move/from16 v17, v8

    move/from16 v16, v13

    move v13, v7

    .line 1872
    :goto_2af
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1875
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 1873
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    .line 1894
    :goto_2cb
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_358

    .line 1895
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_315

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-virtual {v1, v14, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_315
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_31d

    const/4 v0, 0x1

    goto :goto_31e

    :cond_31d
    move v0, v13

    .line 1902
    :goto_31e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v3, :cond_326

    const/4 v3, 0x1

    goto :goto_327

    :cond_326
    move v3, v13

    .line 1903
    :goto_327
    if-eqz v0, :cond_332

    if-nez v3, :cond_332

    .line 1907
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    .line 1908
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 1912
    :cond_332
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 1914
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 1916
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 1917
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_346

    .line 1918
    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    .line 1920
    :cond_346
    if-nez p2, :cond_354

    .line 1921
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1922
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 1921
    invoke-virtual {v0, v2, v3, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_357

    .line 1924
    :cond_354
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 1926
    :goto_357
    goto :goto_383

    :cond_358
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_36e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_36e

    .line 1930
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_383

    .line 1931
    :cond_36e
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_383

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_383

    .line 1934
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 1937
    :cond_383
    :goto_383
    if-eqz v17, :cond_399

    .line 1940
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1941
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 1942
    move/from16 v7, v17

    iput v7, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 1943
    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 1952
    :cond_399
    return v16
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z
    .registers 45

    .line 766
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    move-wide/from16 v3, p5

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    .line 767
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_17

    .line 769
    return v2

    .line 773
    :cond_17
    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 775
    return v2

    .line 779
    :cond_1a
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v1, 0x14

    if-nez v0, :cond_36

    .line 780
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 781
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 782
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 783
    const/16 v0, 0x3e7

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 784
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 785
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 786
    return v2

    .line 789
    :cond_36
    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 790
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 791
    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 792
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 793
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v15

    .line 796
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 797
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v13, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 799
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v11

    .line 802
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v10, 0x2

    const-string v6, "ActivityManager"

    if-gtz v9, :cond_e9

    .line 805
    if-ne v13, v14, :cond_72

    .line 806
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making fixed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_72
    const-string v0, "fixed"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 809
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 810
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 811
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 812
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 813
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 819
    if-ne v7, v5, :cond_99

    .line 820
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 821
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 822
    const-string/jumbo v0, "pers-top-activity"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_af

    .line 823
    :cond_99
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 825
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 826
    const-string/jumbo v0, "pers-top-ui"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_af

    .line 827
    :cond_a7
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 828
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 830
    :cond_af
    :goto_af
    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v0, :cond_c9

    .line 831
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c2

    .line 833
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 834
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_c9

    .line 837
    :cond_c2
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 838
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 841
    :cond_c9
    :goto_c9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 842
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 843
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 845
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v12, :cond_e6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v11, :cond_e3

    goto :goto_e6

    :cond_e3
    move/from16 v18, v2

    goto :goto_e8

    :cond_e6
    :goto_e6
    const/16 v18, 0x1

    :goto_e8
    return v18

    .line 848
    :cond_e9
    const/4 v9, 0x3

    const/16 v16, 0x6

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 850
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    .line 859
    nop

    .line 860
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 861
    if-ne v0, v10, :cond_125

    if-ne v7, v5, :cond_125

    .line 863
    nop

    .line 864
    nop

    .line 865
    const-string/jumbo v2, "top-activity"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 866
    nop

    .line 867
    nop

    .line 868
    if-ne v13, v14, :cond_11f

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making top: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_11f
    move/from16 v25, v0

    const/4 v2, 0x1

    const/16 v23, 0x0

    goto :goto_14c

    .line 871
    :cond_125
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_150

    .line 872
    nop

    .line 873
    nop

    .line 874
    const-string/jumbo v2, "running-remote-anim"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 875
    nop

    .line 876
    if-ne v13, v14, :cond_147

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making running remote anim: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_147
    move/from16 v25, v0

    const/4 v2, 0x0

    const/16 v23, 0x64

    :goto_14c
    const/16 v26, 0x3

    goto/16 :goto_23d

    .line 879
    :cond_150
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_17c

    .line 881
    nop

    .line 882
    nop

    .line 883
    const-string v2, "instrumentation"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 884
    nop

    .line 885
    if-ne v13, v14, :cond_173

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making instrumentation: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_173
    move/from16 v26, v10

    const/4 v2, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x5

    goto/16 :goto_23d

    .line 888
    :cond_17c
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v2, v7, v9}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 893
    nop

    .line 894
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 895
    move v2, v10

    goto :goto_196

    :cond_195
    const/4 v2, 0x0

    .line 896
    :goto_196
    const-string v9, "broadcast"

    iput-object v9, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 897
    nop

    .line 898
    if-ne v13, v14, :cond_1b1

    .line 899
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Making broadcast: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1b1
    move/from16 v26, v2

    const/4 v2, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xc

    goto/16 :goto_23d

    .line 901
    :cond_1ba
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_1ed

    .line 904
    nop

    .line 905
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_1c9

    .line 906
    const/4 v2, 0x2

    goto :goto_1ca

    :cond_1c9
    const/4 v2, 0x0

    .line 907
    :goto_1ca
    const-string v9, "exec-service"

    iput-object v9, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 908
    nop

    .line 909
    if-ne v13, v14, :cond_1e5

    .line 910
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making exec-service: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1e5
    move/from16 v26, v2

    const/4 v2, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xb

    goto :goto_23d

    .line 913
    :cond_1ed
    if-ne v7, v5, :cond_214

    .line 914
    nop

    .line 915
    nop

    .line 916
    const-string/jumbo v2, "top-sleeping"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 917
    nop

    .line 918
    nop

    .line 919
    if-ne v13, v14, :cond_20e

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making top (sleeping): "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_20e
    move/from16 v25, v0

    const/4 v2, 0x1

    const/16 v23, 0x0

    goto :goto_23b

    .line 924
    :cond_214
    nop

    .line 927
    nop

    .line 928
    nop

    .line 929
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 930
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 931
    const-string v2, "cch-empty"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 932
    if-ne v13, v14, :cond_236

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making empty: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_236
    move/from16 v23, p2

    const/4 v2, 0x0

    const/16 v25, 0x14

    :goto_23b
    const/16 v26, 0x0

    :goto_23d
    if-nez v2, :cond_291

    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v9

    if-eqz v9, :cond_291

    .line 939
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v10, 0x3

    move-object/from16 v10, p1

    move/from16 v27, v11

    move/from16 v11, v23

    move/from16 v28, v12

    move v12, v2

    move v2, v13

    move/from16 v13, v25

    move/from16 v24, v14

    move/from16 v14, v26

    move-object v1, v15

    move/from16 v15, v24

    move/from16 v16, v2

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V

    .line 941
    const/16 v0, 0x63

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-virtual {v1, v0, v9}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v0

    .line 944
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v9, v9, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 945
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget-boolean v10, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 946
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v11, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 947
    iget-object v12, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v12, v12, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 949
    const/16 v13, 0x64

    if-ne v9, v13, :cond_289

    .line 950
    add-int v23, v9, v0

    move v9, v2

    move/from16 v0, v23

    move/from16 v36, v12

    move v12, v10

    move/from16 v10, v36

    goto :goto_2a2

    .line 949
    :cond_289
    move v0, v9

    move v9, v2

    move/from16 v36, v12

    move v12, v10

    move/from16 v10, v36

    goto :goto_2a2

    .line 938
    :cond_291
    move/from16 v27, v11

    move/from16 v28, v12

    move v9, v13

    move/from16 v24, v14

    move-object v1, v15

    const/16 v13, 0x64

    .line 954
    move v12, v2

    move/from16 v0, v23

    move/from16 v11, v25

    move/from16 v10, v26

    :goto_2a2
    const/16 v2, 0x13

    if-le v11, v2, :cond_2cb

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_2cb

    .line 955
    const/16 v11, 0x13

    .line 956
    const-string v2, "cch-rec"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 957
    move/from16 v14, v24

    if-ne v9, v14, :cond_2cd

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to cached recent: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cd

    .line 954
    :cond_2cb
    move/from16 v14, v24

    .line 962
    :cond_2cd
    :goto_2cd
    const/16 v2, 0xc8

    if-gt v0, v2, :cond_2d5

    const/4 v13, 0x3

    if-le v11, v13, :cond_345

    goto :goto_2d6

    :cond_2d5
    const/4 v13, 0x3

    .line 964
    :goto_2d6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_31c

    .line 966
    nop

    .line 967
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasLocationForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_2ea

    .line 968
    nop

    .line 969
    const-string v0, "fg-service-location"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v11, v13

    goto :goto_2f0

    .line 972
    :cond_2ea
    nop

    .line 973
    const-string v0, "fg-service"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v11, 0x5

    .line 975
    :goto_2f0
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 976
    nop

    .line 977
    if-ne v9, v14, :cond_319

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise to "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_319
    move v0, v2

    const/4 v10, 0x2

    goto :goto_345

    .line 981
    :cond_31c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v16

    if-eqz v16, :cond_345

    .line 983
    nop

    .line 984
    nop

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 986
    const-string v0, "has-overlay-ui"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 987
    nop

    .line 988
    if-ne v9, v14, :cond_342

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise to overlay ui: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_342
    move v0, v2

    const/4 v10, 0x2

    const/4 v11, 0x7

    :cond_345
    :goto_345
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_389

    const/16 v15, 0x32

    if-le v0, v15, :cond_389

    move/from16 v24, v14

    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v15, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v23, v0

    move-object/from16 v17, v1

    iget-wide v0, v15, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v13, v0

    cmp-long v0, v13, v3

    if-gtz v0, :cond_369

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v13, 0x2

    if-gt v0, v13, :cond_366

    goto :goto_36a

    :cond_366
    move/from16 v14, v24

    goto :goto_38e

    :cond_369
    const/4 v13, 0x2

    .line 1000
    :goto_36a
    const/16 v0, 0x32

    .line 1001
    const-string v1, "fg-service-act"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1002
    move/from16 v14, v24

    if-ne v9, v14, :cond_390

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise to recent fg: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_390

    .line 997
    :cond_389
    move/from16 v23, v0

    move-object/from16 v17, v1

    const/4 v13, 0x2

    .line 1007
    :goto_38e
    move/from16 v0, v23

    :cond_390
    :goto_390
    const/16 v15, 0x9

    if-gt v0, v2, :cond_396

    if-le v11, v15, :cond_3c1

    .line 1009
    :cond_396
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v1, :cond_3c1

    .line 1013
    nop

    .line 1014
    nop

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1016
    const-string v0, "force-imp"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1017
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1018
    nop

    .line 1019
    if-ne v9, v14, :cond_3be

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to force imp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_3be
    move v0, v2

    move v10, v13

    move v11, v15

    :cond_3c1
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v1

    if-eqz v1, :cond_418

    .line 1026
    const/16 v1, 0x190

    if-le v0, v1, :cond_3f4

    .line 1028
    const/16 v0, 0x190

    .line 1029
    nop

    .line 1030
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1031
    const-string v1, "heavy"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1032
    if-ne v9, v14, :cond_3f3

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to heavy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_3f3
    const/4 v10, 0x0

    :cond_3f4
    const/16 v1, 0xe

    if-le v11, v1, :cond_416

    .line 1037
    const/16 v11, 0xe

    .line 1038
    const-string v1, "heavy"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1039
    if-ne v9, v14, :cond_414

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to heavy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_414
    move v2, v10

    goto :goto_419

    .line 1036
    :cond_416
    move v2, v10

    goto :goto_419

    .line 1025
    :cond_418
    move v2, v10

    .line 1045
    :goto_419
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_464

    .line 1046
    const/16 v1, 0x258

    if-le v0, v1, :cond_444

    .line 1049
    const/16 v0, 0x258

    .line 1050
    nop

    .line 1051
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1052
    const-string v1, "home"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1053
    if-ne v9, v14, :cond_443

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to home: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_443
    const/4 v2, 0x0

    :cond_444
    const/16 v1, 0xf

    if-le v11, v1, :cond_464

    .line 1058
    const/16 v11, 0xf

    .line 1059
    const-string v1, "home"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1060
    if-ne v9, v14, :cond_464

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise procstate to home: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_464
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v1

    const/16 v10, 0x10

    if-eqz v1, :cond_4b7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_4b7

    .line 1067
    const/16 v1, 0x2bc

    if-le v0, v1, :cond_498

    .line 1071
    const/16 v0, 0x2bc

    .line 1072
    nop

    .line 1073
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1074
    const-string/jumbo v1, "previous"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1075
    if-ne v9, v14, :cond_497

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to prev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_497
    const/4 v2, 0x0

    :cond_498
    if-le v11, v10, :cond_4b7

    .line 1080
    nop

    .line 1081
    const-string/jumbo v1, "previous"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1082
    if-ne v9, v14, :cond_4b6

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to prev: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_4b6
    move v11, v10

    :cond_4b7
    if-nez p7, :cond_4bb

    move v1, v0

    goto :goto_4c3

    :cond_4bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_4c3
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1097
    if-nez p7, :cond_4ca

    .line 1098
    move v1, v11

    goto :goto_4d2

    .line 1099
    :cond_4ca
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1097
    :goto_4d2
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1101
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1102
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1104
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v10, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    .line 1105
    if-eqz v1, :cond_534

    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v1, :cond_534

    .line 1107
    const/16 v1, 0x12c

    if-le v0, v1, :cond_514

    .line 1109
    const/16 v0, 0x12c

    .line 1110
    if-le v11, v15, :cond_4f7

    .line 1111
    move v11, v15

    .line 1113
    :cond_4f7
    const-string v1, "backup"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1114
    if-ne v9, v14, :cond_511

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise adj to backup: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_511
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1119
    :cond_514
    const/16 v1, 0xa

    if-le v11, v1, :cond_534

    .line 1120
    const/16 v11, 0xa

    .line 1121
    const-string v1, "backup"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1122
    if-ne v9, v14, :cond_534

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise procstate to backup: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_534
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v10, v1

    .line 1129
    :goto_53d
    const/16 v1, 0x1f4

    if-ltz v10, :cond_97e

    if-gtz v0, :cond_553

    if-eqz v2, :cond_553

    if-le v11, v13, :cond_548

    goto :goto_553

    :cond_548
    move v13, v2

    move v2, v11

    move/from16 v30, v12

    const/16 v32, 0x0

    move-object v11, v7

    move-object v7, v6

    move-wide v5, v3

    goto/16 :goto_987

    .line 1133
    :cond_553
    :goto_553
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 1134
    iget-boolean v13, v15, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v13, :cond_5dd

    .line 1135
    const/4 v13, 0x1

    iput-boolean v13, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1136
    const/16 v13, 0xb

    if-le v11, v13, :cond_584

    .line 1137
    nop

    .line 1138
    const-string/jumbo v13, "started-services"

    iput-object v13, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1139
    if-ne v9, v14, :cond_582

    .line 1140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to started service: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_582
    const/16 v11, 0xb

    :cond_584
    iget-boolean v13, v7, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v13, :cond_599

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v13

    if-nez v13, :cond_599

    .line 1149
    if-le v0, v1, :cond_594

    .line 1150
    const-string v1, "cch-started-ui-services"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1176
    :cond_594
    move v13, v2

    move/from16 v30, v12

    const/4 v2, 0x0

    goto :goto_5e1

    .line 1153
    :cond_599
    move v13, v2

    iget-wide v1, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v31, v11

    move/from16 v30, v12

    iget-wide v11, v5, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v1, v11

    cmp-long v1, v3, v1

    if-gez v1, :cond_5d1

    .line 1157
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_5cf

    .line 1158
    nop

    .line 1159
    const-string/jumbo v0, "started-services"

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1160
    if-ne v9, v14, :cond_5c9

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_5c9
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const/16 v0, 0x1f4

    goto :goto_5d2

    .line 1157
    :cond_5cf
    const/4 v2, 0x0

    goto :goto_5d2

    .line 1153
    :cond_5d1
    const/4 v2, 0x0

    .line 1170
    :goto_5d2
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_5da

    .line 1171
    const-string v1, "cch-started-services"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1176
    :cond_5da
    move/from16 v11, v31

    goto :goto_5e1

    .line 1134
    :cond_5dd
    move v13, v2

    move/from16 v30, v12

    const/4 v2, 0x0

    .line 1176
    :goto_5e1
    invoke-virtual {v15}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v12

    .line 1177
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move/from16 v36, v11

    move v11, v1

    move/from16 v1, v36

    .line 1178
    :goto_5f0
    if-ltz v11, :cond_965

    if-gtz v0, :cond_605

    if-eqz v13, :cond_605

    const/4 v2, 0x2

    if-le v1, v2, :cond_5fa

    goto :goto_605

    :cond_5fa
    move-object v11, v7

    move/from16 v33, v10

    const/16 v10, 0x9

    const/16 v32, 0x0

    move-object v7, v6

    move-wide v5, v3

    goto/16 :goto_96e

    .line 1182
    :cond_605
    :goto_605
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1183
    move/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v36, v1

    move v1, v0

    move/from16 v0, v36

    .line 1184
    :goto_613
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_942

    if-gtz v1, :cond_633

    if-eqz v18, :cond_633

    const/4 v5, 0x2

    if-le v0, v5, :cond_621

    goto :goto_633

    :cond_621
    move/from16 v19, v0

    move v2, v1

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v29, v12

    const/16 v10, 0x9

    const/16 v32, 0x0

    move-object v11, v7

    move-object v7, v6

    move-wide v5, v3

    goto/16 :goto_952

    .line 1190
    :cond_633
    :goto_633
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 1191
    move/from16 v31, v0

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v7, :cond_652

    .line 1193
    move/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v29, v12

    move/from16 v19, v31

    const/16 v32, 0x0

    move-object v10, v6

    move-object v11, v7

    goto :goto_696

    .line 1196
    :cond_652
    nop

    .line 1197
    iget v0, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8b3

    .line 1198
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1199
    move/from16 v19, v31

    const/16 v32, 0x0

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v29, v12

    const/16 v12, 0x64

    move-object/from16 v1, v31

    move-object/from16 v21, v2

    const/4 v12, 0x0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v5

    move/from16 v33, v10

    move/from16 v34, v11

    const/4 v11, 0x1

    move-object v10, v6

    move-wide/from16 v5, p5

    move-object v11, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1201
    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1202
    nop

    .line 1187
    :goto_696
    move-wide/from16 v5, p5

    move-object v7, v10

    move/from16 v0, v19

    move/from16 v1, v20

    const/16 v10, 0x9

    move/from16 v20, v13

    goto/16 :goto_932

    .line 1205
    :cond_6a3
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    .line 1206
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 1208
    const/16 v2, 0x11

    if-lt v1, v2, :cond_6b1

    .line 1212
    const/16 v1, 0x14

    .line 1214
    :cond_6b1
    nop

    .line 1215
    iget v2, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_6f0

    .line 1218
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v2, :cond_6d7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-nez v2, :cond_6d7

    .line 1223
    move/from16 v2, v20

    if-le v2, v0, :cond_6ca

    .line 1224
    const-string v0, "cch-bound-ui-services"

    goto :goto_6cc

    .line 1223
    :cond_6ca
    move-object/from16 v0, v32

    .line 1226
    :goto_6cc
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1227
    nop

    .line 1228
    move-wide/from16 v5, p5

    move-object v3, v0

    move v0, v2

    move/from16 v1, v19

    goto :goto_6f6

    .line 1218
    :cond_6d7
    move/from16 v2, v20

    .line 1230
    iget-wide v3, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v5

    move-wide/from16 v5, p5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_6f4

    .line 1237
    if-le v2, v0, :cond_6eb

    .line 1238
    const-string v0, "cch-bound-services"

    goto :goto_6ed

    .line 1237
    :cond_6eb
    move-object/from16 v0, v32

    .line 1240
    :goto_6ed
    move-object v3, v0

    move v0, v2

    goto :goto_6f6

    .line 1215
    :cond_6f0
    move-wide/from16 v5, p5

    move/from16 v2, v20

    .line 1244
    :cond_6f4
    move-object/from16 v3, v32

    :goto_6f6
    if-le v2, v0, :cond_79c

    .line 1252
    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_71e

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v4

    if-nez v4, :cond_71e

    const/16 v4, 0xc8

    if-le v0, v4, :cond_71e

    .line 1254
    const/16 v0, 0x384

    if-lt v2, v0, :cond_718

    .line 1255
    const-string v3, "cch-bound-ui-services"

    move/from16 v20, v13

    move/from16 v0, v18

    move-object/from16 v4, v31

    const/4 v7, 0x0

    move v13, v2

    move/from16 v2, v19

    goto/16 :goto_7aa

    .line 1254
    :cond_718
    move-object/from16 v20, v3

    move-object/from16 v4, v31

    goto/16 :goto_7a0

    .line 1259
    :cond_71e
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x48

    if-eqz v4, :cond_73b

    .line 1261
    const/16 v4, -0x2bc

    if-lt v0, v4, :cond_729

    .line 1262
    goto :goto_766

    .line 1265
    :cond_729
    const/16 v0, -0x2bc

    .line 1266
    nop

    .line 1267
    nop

    .line 1268
    iget v4, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v4, v5, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1269
    const/16 v4, 0x64

    const/4 v7, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    goto :goto_776

    .line 1271
    :cond_73b
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_74f

    const/16 v4, 0xc8

    if-ge v0, v4, :cond_74f

    const/16 v4, 0xfa

    if-le v2, v4, :cond_74f

    .line 1274
    const/16 v0, 0xfa

    const/16 v4, 0x64

    const/4 v7, 0x0

    goto :goto_776

    .line 1275
    :cond_74f
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x40000000  # 2.0f

    and-int/2addr v4, v7

    if-eqz v4, :cond_761

    const/16 v4, 0xc8

    if-ge v0, v4, :cond_763

    if-le v2, v4, :cond_763

    .line 1278
    move v0, v4

    const/16 v4, 0x64

    const/4 v7, 0x0

    goto :goto_776

    .line 1275
    :cond_761
    const/16 v4, 0xc8

    .line 1279
    :cond_763
    if-lt v0, v4, :cond_76a

    .line 1280
    nop

    .line 1289
    :goto_766
    const/16 v4, 0x64

    const/4 v7, 0x0

    goto :goto_776

    .line 1282
    :cond_76a
    const/16 v4, 0x64

    if-le v2, v4, :cond_774

    .line 1284
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v7, 0x0

    goto :goto_776

    .line 1286
    :cond_774
    move v0, v2

    const/4 v7, 0x0

    .line 1289
    :goto_776
    move-object/from16 v20, v3

    move-object/from16 v4, v31

    iget-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-nez v3, :cond_781

    .line 1290
    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1292
    :cond_781
    if-le v2, v0, :cond_792

    .line 1293
    nop

    .line 1294
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1295
    const-string/jumbo v3, "service"

    move/from16 v20, v13

    move/from16 v2, v19

    move v13, v0

    move/from16 v0, v18

    goto :goto_7aa

    .line 1292
    :cond_792
    move/from16 v0, v18

    move-object/from16 v3, v20

    move/from16 v20, v13

    move v13, v2

    move/from16 v2, v19

    goto :goto_7aa

    .line 1244
    :cond_79c
    move-object/from16 v20, v3

    move-object/from16 v4, v31

    .line 1299
    :goto_7a0
    move/from16 v0, v18

    move-object/from16 v3, v20

    const/4 v7, 0x0

    move/from16 v20, v13

    move v13, v2

    move/from16 v2, v19

    :goto_7aa
    move-object/from16 v31, v10

    iget v10, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v18, 0x800004

    and-int v10, v10, v18

    if-nez v10, :cond_810

    .line 1304
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v10

    .line 1305
    if-le v10, v0, :cond_7c4

    .line 1306
    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7c2

    .line 1307
    goto :goto_7c5

    .line 1309
    :cond_7c2
    const/4 v10, 0x2

    goto :goto_7c5

    .line 1305
    :cond_7c4
    move v10, v0

    .line 1312
    :goto_7c5
    const/4 v0, 0x2

    if-ge v1, v0, :cond_7ed

    .line 1317
    const/16 v0, 0x1000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7d2

    .line 1318
    const/4 v0, 0x3

    goto :goto_7d3

    .line 1319
    :cond_7d2
    const/4 v0, 0x6

    .line 1320
    :goto_7d3
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_7db

    .line 1321
    goto :goto_7eb

    .line 1322
    :cond_7db
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7ea

    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v4, 0x2000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_7ea

    .line 1326
    goto :goto_7eb

    .line 1328
    :cond_7ea
    const/4 v0, 0x7

    .line 1331
    :goto_7eb
    const/4 v4, 0x5

    goto :goto_80b

    :cond_7ed
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7fd

    .line 1332
    const/16 v0, 0x1000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7fb

    .line 1335
    const/4 v0, 0x4

    const/4 v4, 0x5

    goto :goto_80b

    .line 1332
    :cond_7fb
    const/4 v4, 0x5

    goto :goto_80a

    .line 1337
    :cond_7fd
    const/4 v4, 0x5

    if-gt v1, v4, :cond_80a

    .line 1339
    const/16 v0, 0x1000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_80a

    .line 1340
    move v0, v4

    goto :goto_80b

    .line 1343
    :cond_80a
    :goto_80a
    move v0, v1

    :goto_80b
    move v1, v0

    move v0, v10

    const/16 v10, 0x9

    goto :goto_827

    :cond_810
    const/4 v4, 0x5

    iget v10, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v18, 0x800000

    and-int v10, v10, v18

    if-nez v10, :cond_81f

    .line 1344
    const/16 v10, 0x9

    if-ge v1, v10, :cond_827

    .line 1346
    move v1, v10

    goto :goto_827

    .line 1350
    :cond_81f
    const/16 v10, 0x9

    const/16 v4, 0x8

    if-ge v1, v4, :cond_827

    .line 1352
    const/16 v1, 0x8

    .line 1357
    :cond_827
    :goto_827
    const/4 v4, 0x3

    if-ge v0, v4, :cond_833

    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v18, 0x80000

    and-int v4, v4, v18

    if-eqz v4, :cond_833

    .line 1359
    const/4 v0, 0x3

    .line 1362
    :cond_833
    if-nez v7, :cond_83a

    .line 1363
    iget v4, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v1, v4, v5, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1366
    :cond_83a
    if-le v2, v1, :cond_848

    .line 1367
    nop

    .line 1368
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1369
    if-nez v3, :cond_847

    .line 1370
    const-string/jumbo v3, "service"

    move v2, v1

    goto :goto_848

    .line 1369
    :cond_847
    move v2, v1

    .line 1373
    :cond_848
    :goto_848
    const/16 v4, 0x8

    if-ge v2, v4, :cond_857

    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x20000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_857

    .line 1375
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1377
    :cond_857
    if-eqz v3, :cond_8ae

    .line 1378
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1379
    const/4 v4, 0x2

    iput v4, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1381
    iget-object v4, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1382
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1383
    iget-object v1, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1384
    if-ne v9, v14, :cond_8ab

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", due to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adj="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    move-object/from16 v7, v31

    invoke-virtual {v8, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b0

    .line 1384
    :cond_8ab
    move-object/from16 v7, v31

    goto :goto_8b0

    .line 1377
    :cond_8ae
    move-object/from16 v7, v31

    .line 1392
    :goto_8b0
    move v1, v2

    move v2, v13

    goto :goto_8cc

    .line 1197
    :cond_8b3
    move-object/from16 v21, v2

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v29, v12

    move/from16 v20, v13

    move/from16 v19, v31

    const/16 v10, 0x9

    const/16 v32, 0x0

    move v2, v1

    move-object v12, v5

    move-object v11, v7

    move-object v7, v6

    move-wide v5, v3

    move/from16 v0, v18

    move/from16 v1, v19

    .line 1392
    :goto_8cc
    iget v3, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8d6

    .line 1393
    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1395
    :cond_8d6
    iget-object v3, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 1396
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_92e

    .line 1397
    if-eqz v3, :cond_92e

    if-lez v2, :cond_92e

    .line 1398
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v4

    if-eqz v4, :cond_92e

    .line 1399
    nop

    .line 1400
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1401
    iget v2, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_900

    .line 1402
    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8fd

    .line 1403
    const/4 v0, 0x4

    move/from16 v18, v0

    goto :goto_902

    .line 1405
    :cond_8fd
    const/16 v18, 0x2

    goto :goto_902

    .line 1401
    :cond_900
    move/from16 v18, v0

    .line 1408
    :goto_902
    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1409
    const-string/jumbo v0, "service"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1410
    const/4 v0, 0x2

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1412
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1413
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1414
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1415
    if-ne v9, v14, :cond_92b

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to service w/activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :cond_92b
    move v0, v1

    const/4 v1, 0x0

    goto :goto_932

    :cond_92e
    move/from16 v18, v0

    move v0, v1

    move v1, v2

    :goto_932
    add-int/lit8 v13, v20, 0x1

    move-wide v3, v5

    move-object v6, v7

    move-object v7, v11

    move-object/from16 v2, v21

    move-object/from16 v12, v29

    move/from16 v10, v33

    move/from16 v11, v34

    const/4 v5, 0x1

    goto/16 :goto_613

    .line 1184
    :cond_942
    move/from16 v19, v0

    move v2, v1

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v29, v12

    const/16 v10, 0x9

    const/16 v32, 0x0

    move-object v11, v7

    move-object v7, v6

    move-wide v5, v3

    .line 1181
    :goto_952
    add-int/lit8 v0, v34, -0x1

    move-wide v3, v5

    move-object v6, v7

    move-object v7, v11

    move/from16 v13, v18

    move/from16 v1, v19

    move-object/from16 v12, v29

    move/from16 v10, v33

    const/4 v5, 0x1

    move v11, v0

    move v0, v2

    const/4 v2, 0x0

    goto/16 :goto_5f0

    .line 1178
    :cond_965
    move-object v11, v7

    move/from16 v33, v10

    const/16 v10, 0x9

    const/16 v32, 0x0

    move-object v7, v6

    move-wide v5, v3

    .line 1132
    :goto_96e
    add-int/lit8 v2, v33, -0x1

    move-wide v3, v5

    move-object v6, v7

    move v15, v10

    move-object v7, v11

    move/from16 v12, v30

    move-object/from16 v5, p3

    move v11, v1

    move v10, v2

    move v2, v13

    const/4 v13, 0x2

    goto/16 :goto_53d

    .line 1129
    :cond_97e
    move v13, v2

    move v2, v11

    move/from16 v30, v12

    const/16 v32, 0x0

    move-object v11, v7

    move-object v7, v6

    move-wide v5, v3

    .line 1425
    :goto_987
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v10, v3

    move v3, v2

    move v2, v13

    .line 1426
    :goto_992
    if-ltz v10, :cond_b54

    if-gtz v0, :cond_9a2

    if-eqz v2, :cond_9a2

    const/4 v4, 0x2

    if-le v3, v4, :cond_99c

    goto :goto_9a2

    :cond_99c
    move-object v4, v7

    move v1, v9

    move-wide v6, v5

    const/4 v5, 0x2

    goto/16 :goto_b58

    .line 1430
    :cond_9a2
    :goto_9a2
    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/am/ContentProviderRecord;

    .line 1431
    iget-object v4, v12, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    move v15, v0

    move v13, v4

    move v4, v2

    .line 1432
    :goto_9b6
    if-ltz v13, :cond_ae8

    if-gtz v15, :cond_9cb

    if-eqz v4, :cond_9cb

    const/4 v0, 0x2

    if-le v3, v0, :cond_9c0

    goto :goto_9cb

    :cond_9c0
    move v2, v3

    move v13, v4

    move-object v4, v7

    move v1, v9

    move/from16 v19, v10

    const/4 v9, 0x5

    move-wide v6, v5

    const/4 v5, 0x2

    goto/16 :goto_af1

    .line 1436
    :cond_9cb
    :goto_9cb
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 1437
    iget-object v0, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1438
    if-ne v0, v11, :cond_9e5

    .line 1440
    move/from16 v20, v3

    move-object/from16 v35, v7

    move/from16 v22, v9

    move/from16 v19, v10

    move/from16 v21, v13

    const/4 v9, 0x5

    move v13, v4

    goto :goto_a15

    .line 1442
    :cond_9e5
    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v19, v10

    move-object v10, v2

    move/from16 v2, p2

    move/from16 v20, v3

    move-object/from16 v3, p3

    move/from16 v22, v9

    move/from16 v21, v13

    const/4 v9, 0x5

    move v13, v4

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v35, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1444
    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v20

    move v4, v15

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_a20

    .line 1445
    nop

    .line 1435
    :goto_a15
    move-wide/from16 v6, p5

    move/from16 v3, v20

    move/from16 v1, v22

    move-object/from16 v4, v35

    const/4 v5, 0x2

    goto/16 :goto_adb

    .line 1448
    :cond_a20
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    .line 1449
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 1451
    const/16 v0, 0x11

    if-lt v1, v0, :cond_a2e

    .line 1454
    const/16 v1, 0x14

    .line 1456
    :cond_a2e
    nop

    .line 1457
    if-le v15, v2, :cond_a59

    .line 1458
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_a42

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-nez v0, :cond_a42

    const/16 v4, 0xc8

    if-le v2, v4, :cond_a44

    .line 1460
    const-string v0, "cch-ui-provider"

    goto :goto_a4f

    .line 1458
    :cond_a42
    const/16 v4, 0xc8

    .line 1462
    :cond_a44
    if-lez v2, :cond_a48

    .line 1463
    move v15, v2

    goto :goto_a49

    :cond_a48
    const/4 v15, 0x0

    .line 1464
    :goto_a49
    invoke-virtual {v11, v15}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1465
    const-string/jumbo v0, "provider"

    .line 1467
    :goto_a4f
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    move-object/from16 v3, v18

    iget-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->cached:Z

    and-int/2addr v2, v5

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    goto :goto_a5f

    .line 1457
    :cond_a59
    move-object/from16 v3, v18

    const/16 v4, 0xc8

    move-object/from16 v0, v32

    .line 1470
    :goto_a5f
    if-gt v1, v9, :cond_a6d

    .line 1471
    if-nez v0, :cond_a66

    .line 1472
    const-string/jumbo v0, "provider"

    .line 1474
    :cond_a66
    const/4 v5, 0x2

    if-ne v1, v5, :cond_a6b

    .line 1475
    const/4 v1, 0x4

    goto :goto_a6e

    .line 1477
    :cond_a6b
    const/4 v1, 0x6

    goto :goto_a6e

    .line 1470
    :cond_a6d
    const/4 v5, 0x2

    .line 1481
    :goto_a6e
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-wide/from16 v6, p5

    invoke-virtual {v10, v1, v2, v6, v7}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 1482
    move/from16 v2, v20

    if-le v2, v1, :cond_a7e

    .line 1483
    nop

    .line 1484
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    move v2, v1

    .line 1486
    :cond_a7e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v10

    if-le v10, v13, :cond_a85

    .line 1487
    move v13, v5

    .line 1489
    :cond_a85
    if-eqz v0, :cond_ad6

    .line 1490
    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1491
    const/4 v10, 0x1

    iput v10, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1493
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1494
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1495
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1496
    move/from16 v1, v22

    if-ne v1, v14, :cond_ad3

    .line 1497
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    move-object/from16 v4, v35

    invoke-virtual {v8, v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ada

    .line 1496
    :cond_ad3
    move-object/from16 v4, v35

    goto :goto_ada

    .line 1489
    :cond_ad6
    move/from16 v1, v22

    move-object/from16 v4, v35

    .line 1435
    :goto_ada
    move v3, v2

    :goto_adb
    add-int/lit8 v0, v21, -0x1

    move v9, v1

    move-wide v5, v6

    move/from16 v10, v19

    const/16 v1, 0x1f4

    move-object v7, v4

    move v4, v13

    move v13, v0

    goto/16 :goto_9b6

    .line 1432
    :cond_ae8
    move v2, v3

    move v13, v4

    move-object v4, v7

    move v1, v9

    move/from16 v19, v10

    const/4 v9, 0x5

    move-wide v6, v5

    const/4 v5, 0x2

    .line 1507
    :goto_af1
    invoke-virtual {v12}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_b46

    .line 1508
    if-lez v15, :cond_b21

    .line 1509
    nop

    .line 1510
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1511
    nop

    .line 1512
    iput-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1513
    const-string v0, "ext-provider"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1514
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1515
    if-ne v1, v14, :cond_b1f

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to external provider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_b1f
    move v13, v5

    const/4 v15, 0x0

    :cond_b21
    const/4 v10, 0x7

    if-le v2, v10, :cond_b42

    .line 1521
    nop

    .line 1522
    invoke-virtual {v11, v10}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1523
    if-ne v1, v14, :cond_b3e

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to external provider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_b3e
    move v3, v10

    move v2, v13

    move v0, v15

    goto :goto_b4a

    .line 1520
    :cond_b42
    move v3, v2

    move v2, v13

    move v0, v15

    goto :goto_b4a

    .line 1507
    :cond_b46
    const/4 v10, 0x7

    move v3, v2

    move v2, v13

    move v0, v15

    .line 1429
    :goto_b4a
    add-int/lit8 v12, v19, -0x1

    move v9, v1

    move-wide v5, v6

    move v10, v12

    const/16 v1, 0x1f4

    move-object v7, v4

    goto/16 :goto_992

    .line 1426
    :cond_b54
    move-object v4, v7

    move v1, v9

    move-wide v6, v5

    const/4 v5, 0x2

    .line 1531
    :goto_b58
    iget-wide v9, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-lez v9, :cond_bb2

    iget-wide v9, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v12, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v9, v12

    cmp-long v6, v9, v6

    if-lez v6, :cond_bb2

    .line 1533
    const/16 v6, 0x2bc

    if-le v0, v6, :cond_b91

    .line 1534
    const/16 v0, 0x2bc

    .line 1535
    nop

    .line 1536
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1537
    const-string/jumbo v2, "recent-provider"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1538
    if-ne v1, v14, :cond_b90

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to recent provider: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_b90
    const/4 v2, 0x0

    :cond_b91
    const/16 v6, 0x10

    if-le v3, v6, :cond_bb2

    .line 1544
    nop

    .line 1545
    const-string/jumbo v3, "recent-provider"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1546
    if-ne v1, v14, :cond_bb1

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to recent provider: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v4, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_bb1
    move v3, v6

    :cond_bb2
    const/16 v1, 0x14

    if-lt v3, v1, :cond_bcd

    .line 1554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v1

    if-eqz v1, :cond_bc3

    .line 1556
    const/16 v3, 0x12

    .line 1557
    const-string v1, "cch-client-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_bcd

    .line 1558
    :cond_bc3
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_bcd

    .line 1561
    const/16 v3, 0x11

    .line 1562
    const-string v1, "cch-as-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1566
    :cond_bcd
    :goto_bcd
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_c19

    .line 1567
    if-eqz p4, :cond_c11

    .line 1568
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v6, 0x3

    div-int/2addr v4, v6

    if-le v1, v4, :cond_bdd

    const/4 v1, 0x1

    goto :goto_bde

    :cond_bdd
    const/4 v1, 0x0

    :goto_bde
    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 1569
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1571
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v1, :cond_c0d

    .line 1576
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_c05

    iget-wide v6, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1577
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v9

    cmp-long v1, v6, v9

    if-ltz v1, :cond_c03

    .line 1578
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 1579
    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v1, 0x0

    goto :goto_c12

    .line 1577
    :cond_c03
    const/4 v1, 0x1

    goto :goto_c06

    .line 1576
    :cond_c05
    const/4 v1, 0x1

    .line 1582
    :goto_c06
    iget v4, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v1

    iput v4, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v1, 0x0

    goto :goto_c12

    .line 1586
    :cond_c0d
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_c12

    .line 1567
    :cond_c11
    const/4 v1, 0x0

    .line 1589
    :goto_c12
    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v4, :cond_c1a

    .line 1590
    const/16 v0, 0x320

    goto :goto_c1a

    .line 1566
    :cond_c19
    const/4 v1, 0x0

    .line 1594
    :cond_c1a
    :goto_c1a
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1598
    iget v4, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, v4, :cond_c2d

    .line 1599
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1600
    iget v4, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v6, 0xfa

    if-gt v4, v6, :cond_c2b

    .line 1601
    move v6, v5

    goto :goto_c2e

    .line 1600
    :cond_c2b
    move v6, v2

    goto :goto_c2e

    .line 1598
    :cond_c2d
    move v6, v2

    .line 1607
    :goto_c2e
    const/4 v2, 0x6

    if-lt v3, v2, :cond_c3c

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c3d

    .line 1609
    if-le v6, v4, :cond_c3d

    .line 1610
    move v6, v4

    goto :goto_c3d

    .line 1607
    :cond_c3c
    const/4 v4, 0x1

    .line 1619
    :cond_c3d
    :goto_c3d
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1620
    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1621
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1622
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1623
    move/from16 v10, v30

    invoke-virtual {v11, v10}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1624
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1627
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v2, v28

    if-lt v0, v2, :cond_c63

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    move/from16 v2, v27

    if-ge v0, v2, :cond_c64

    :cond_c63
    move v1, v4

    :cond_c64
    return v1
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
    .registers 7

    .line 181
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 182
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 183
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProcessGroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    :cond_2b
    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_37
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 194
    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 195
    goto :goto_39

    .line 194
    :catchall_32
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    .line 189
    :catch_37
    move-exception p0

    goto :goto_2e

    .line 196
    :goto_39
    const/4 p0, 0x1

    return p0
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6

    .line 2045
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d

    .line 2046
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 2047
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    .line 2049
    :cond_d
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_7

    .line 2003
    return-void

    .line 2009
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-le v0, v1, :cond_4c

    .line 2010
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4c

    .line 2013
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3e

    .line 2014
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2e

    .line 2015
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2016
    move v5, v2

    goto :goto_50

    .line 2018
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-lez v0, :cond_3c

    goto :goto_50

    :cond_3c
    move v5, v2

    goto :goto_50

    .line 2022
    :cond_3e
    nop

    .line 2023
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_47

    goto :goto_48

    :cond_47
    move v5, v2

    .line 2024
    :goto_48
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_50

    .line 2011
    :cond_4c
    :goto_4c
    nop

    .line 2012
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2026
    :goto_50
    if-eqz v5, :cond_80

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_64

    .line 2027
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_80

    .line 2029
    :cond_64
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2030
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    .line 2031
    if-eqz p2, :cond_80

    .line 2032
    nop

    :goto_6e
    array-length p3, p2

    if-ge v2, p3, :cond_80

    .line 2033
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v0, p2, v2

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v6, 0x6

    invoke-virtual {p3, v0, v1, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2032
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 2038
    :cond_80
    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    .line 2039
    if-nez v5, :cond_87

    .line 2040
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2042
    :cond_87
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .registers 8

    .line 1643
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1d

    .line 1647
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 1650
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge p1, v1, :cond_1d

    .line 1651
    if-eqz p5, :cond_1c

    .line 1654
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result p1

    if-lt p1, p3, :cond_1d

    .line 1655
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result p1

    if-lt p1, p4, :cond_1d

    .line 1656
    return v0

    .line 1661
    :cond_1c
    return v0

    .line 1665
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 240
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_6

    .line 241
    const/4 p1, 0x0

    return p1

    .line 244
    :cond_6
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method dumpAppCompactorSettings(Ljava/io/PrintWriter;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2146
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppCompactor;->dump(Ljava/io/PrintWriter;)V

    .line 2147
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2138
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2120
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2121
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2122
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2124
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2125
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2128
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    return-void
.end method

.method idleUidsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2057
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 2058
    if-gtz v0, :cond_9

    .line 2059
    return-void

    .line 2061
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2062
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 2063
    nop

    .line 2064
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_1b

    .line 2065
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 2067
    :cond_1b
    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_20
    if-ltz v0, :cond_53

    .line 2068
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 2069
    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 2070
    cmp-long v13, v11, v6

    if-lez v13, :cond_50

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_50

    .line 2071
    cmp-long v13, v11, v3

    if-gtz v13, :cond_47

    .line 2072
    iget v11, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v11}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2073
    iput-boolean v5, v10, Lcom/android/server/am/UidRecord;->idle:Z

    .line 2074
    iput-boolean v5, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 2075
    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v12, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v11, v12, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_50

    .line 2077
    :cond_47
    cmp-long v10, v8, v6

    if-eqz v10, :cond_4f

    cmp-long v10, v8, v11

    if-lez v10, :cond_50

    .line 2078
    :cond_4f
    move-wide v8, v11

    .line 2067
    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 2083
    :cond_53
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_5a

    .line 2084
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2086
    :cond_5a
    cmp-long v0, v8, v6

    if-lez v0, :cond_74

    .line 2087
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2088
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v8, v4

    sub-long/2addr v8, v1

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2091
    :cond_74
    return-void
.end method

.method initSettings()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->init()V

    .line 202
    return-void
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1991
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 1992
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1993
    return-void

    .line 1992
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1671
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz p1, :cond_16

    .line 1673
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1675
    :cond_16
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2095
    nop

    .line 2096
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_24

    .line 2097
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 2098
    iget v4, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, p1, :cond_21

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v4, p2, :cond_21

    .line 2099
    iput-boolean p2, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2100
    move v2, v1

    .line 2096
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2103
    :cond_24
    if-eqz v2, :cond_2c

    .line 2104
    const-string/jumbo p1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2106
    :cond_2c
    return-void
.end method

.method setAttachingSchedGroupLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1957
    nop

    .line 1960
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1961
    const/4 v0, 0x0

    .line 1966
    :try_start_8
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    .line 1967
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1968
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_23

    .line 1970
    :cond_20
    const-string/jumbo v0, "not expected top priority"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    .line 1974
    :goto_23
    goto :goto_29

    .line 1972
    :catch_24
    move-exception v0

    .line 1973
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1975
    :goto_29
    if-nez v0, :cond_2d

    .line 1976
    const/4 v0, 0x3

    goto :goto_44

    .line 1980
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback pre-set sched group to default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_43
    const/4 v0, 0x2

    :goto_44
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1985
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2110
    nop

    .line 2111
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    .line 2112
    if-eqz p1, :cond_15

    iget-boolean v0, p1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v0, p2, :cond_15

    .line 2113
    iput-boolean p2, p1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2114
    const-string/jumbo p1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2116
    :cond_15
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .registers 46
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 251
    move-object/from16 v8, p0

    const-wide/16 v9, 0x40

    move-object/from16 v0, p1

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 253
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 256
    const-wide/32 v16, 0x1b7740

    sub-long v18, v12, v16

    .line 257
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v7

    .line 260
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    :goto_31
    if-ltz v0, :cond_3f

    .line 261
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 260
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 267
    :cond_3f
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_4c

    .line 268
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    .line 271
    :cond_4c
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v5

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 272
    const/4 v6, 0x0

    iput v6, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 273
    iput v6, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 275
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 276
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v3, v0, v4

    .line 286
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v0, v7, v0

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v0, v1

    .line 287
    if-le v0, v3, :cond_6a

    .line 294
    move v0, v3

    .line 296
    :cond_6a
    const/16 v2, 0xa

    add-int/2addr v0, v2

    sub-int/2addr v0, v5

    div-int/2addr v0, v2

    .line 297
    if-ge v0, v5, :cond_73

    move v1, v5

    goto :goto_74

    :cond_73
    move v1, v0

    .line 298
    :goto_74
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    if-lez v0, :cond_7b

    add-int/2addr v0, v2

    sub-int/2addr v0, v5

    goto :goto_7c

    :cond_7b
    move v0, v5

    :goto_7c
    div-int/2addr v0, v2

    .line 300
    if-ge v0, v5, :cond_80

    move v0, v5

    .line 301
    :cond_80
    nop

    .line 302
    nop

    .line 303
    nop

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 311
    iput v6, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 312
    iput v6, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 316
    const/16 v20, 0x384

    .line 317
    const/16 v21, 0x38e

    .line 318
    nop

    .line 319
    const/16 v22, 0x389

    .line 320
    const/16 v23, 0x393

    .line 322
    nop

    .line 325
    add-int/lit8 v24, v7, -0x1

    move/from16 v2, v24

    :goto_9b
    const/16 v9, 0x3e9

    const/16 v10, 0x14

    if-ltz v2, :cond_b9

    .line 326
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 327
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 328
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 329
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 325
    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x1

    const-wide/16 v9, 0x40

    goto :goto_9b

    .line 331
    :cond_b9
    move/from16 v27, v6

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v32, v29

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v10, v22

    move/from16 v26, v23

    move/from16 v2, v24

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v20, v32

    :goto_d1
    if-ltz v2, :cond_24b

    .line 332
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 333
    iget-boolean v9, v5, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v9, :cond_21c

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_21c

    .line 334
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 335
    const/16 v9, 0x3e9

    const/16 v33, 0x1

    const/16 v34, 0x0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v36, v1

    move-object v1, v5

    move/from16 v37, v2

    move v2, v9

    move v9, v3

    move-object v3, v11

    move/from16 v38, v4

    move/from16 v4, v33

    move-object/from16 v39, v5

    move-wide v5, v12

    move/from16 v25, v9

    move v9, v7

    move/from16 v7, v34

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 338
    move-object/from16 v5, v39

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v0, v20, v0

    .line 342
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0x3e9

    if-lt v1, v2, :cond_207

    .line 343
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v3, 0x3e7

    packed-switch v1, :pswitch_data_588

    .line 391
    move/from16 v6, v27

    move/from16 v4, v28

    move/from16 v7, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v27, v35

    move/from16 v3, v26

    if-eq v10, v3, :cond_1ea

    .line 392
    move/from16 v20, v0

    add-int/lit8 v0, v22, 0x1

    .line 393
    move/from16 v26, v1

    move/from16 v1, v36

    if-lt v0, v1, :cond_1e5

    .line 394
    nop

    .line 395
    nop

    .line 396
    add-int/lit8 v0, v3, 0xa

    .line 397
    const/16 v10, 0x3e7

    if-le v0, v10, :cond_1e2

    .line 398
    move v0, v10

    const/16 v22, 0x0

    goto/16 :goto_1f2

    .line 348
    :pswitch_144  #0x11, 0x12, 0x13
    nop

    .line 349
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v1, :cond_18f

    .line 350
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v6, v27

    if-ne v6, v1, :cond_17c

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v28

    if-ne v4, v1, :cond_17c

    .line 354
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v7, v29

    if-le v1, v7, :cond_16f

    .line 355
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 356
    move/from16 v7, v30

    move/from16 v2, v31

    if-ge v7, v2, :cond_16b

    if-ge v7, v3, :cond_16b

    .line 358
    add-int/lit8 v32, v32, 0x1

    move/from16 v29, v1

    move v1, v7

    goto :goto_175

    .line 361
    :cond_16b
    move/from16 v29, v1

    move v1, v7

    goto :goto_175

    .line 354
    :cond_16f
    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v29, v7

    .line 361
    :goto_175
    move v7, v4

    move/from16 v20, v6

    move/from16 v6, v32

    const/4 v4, 0x1

    goto :goto_19f

    .line 350
    :cond_17c
    move/from16 v1, v30

    move/from16 v2, v31

    .line 363
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 364
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 365
    iget v7, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v20, v4

    move/from16 v29, v7

    const/4 v4, 0x0

    move v7, v6

    move/from16 v6, v32

    goto :goto_19f

    .line 349
    :cond_18f
    move/from16 v6, v27

    move/from16 v4, v28

    move/from16 v7, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v20, v6

    move/from16 v6, v32

    move v7, v4

    const/4 v4, 0x0

    .line 368
    :goto_19f
    if-nez v4, :cond_1c3

    if-eq v1, v2, :cond_1c3

    .line 369
    add-int/lit8 v6, v23, 0x1

    .line 370
    nop

    .line 371
    move/from16 v4, v35

    if-lt v6, v4, :cond_1bf

    .line 372
    nop

    .line 373
    nop

    .line 374
    add-int/lit8 v1, v2, 0xa

    .line 375
    if-le v1, v3, :cond_1b6

    .line 376
    move v1, v2

    move v2, v3

    const/4 v6, 0x0

    const/16 v23, 0x0

    goto :goto_1c5

    .line 375
    :cond_1b6
    const/4 v6, 0x0

    const/16 v23, 0x0

    move/from16 v43, v2

    move v2, v1

    move/from16 v1, v43

    goto :goto_1c5

    .line 371
    :cond_1bf
    move/from16 v23, v6

    const/4 v6, 0x0

    goto :goto_1c5

    .line 368
    :cond_1c3
    move/from16 v4, v35

    .line 383
    :goto_1c5
    add-int v3, v1, v6

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 384
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v3

    iput v3, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 388
    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v27, v4

    move/from16 v32, v6

    move/from16 v28, v7

    move/from16 v6, v20

    move/from16 v1, v36

    move/from16 v20, v0

    goto/16 :goto_23b

    .line 397
    :cond_1e2
    const/16 v22, 0x0

    goto :goto_1f2

    .line 393
    :cond_1e5
    move/from16 v22, v0

    move v0, v3

    move v3, v10

    goto :goto_1f2

    .line 391
    :cond_1ea
    move/from16 v20, v0

    move/from16 v26, v1

    move/from16 v1, v36

    move v0, v3

    move v3, v10

    .line 407
    :goto_1f2
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 408
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v10

    iput v10, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v31, v2

    move v10, v3

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v30, v26

    move/from16 v26, v0

    goto :goto_23b

    .line 342
    :cond_207
    move/from16 v20, v0

    move/from16 v3, v26

    move/from16 v6, v27

    move/from16 v4, v28

    move/from16 v7, v29

    move/from16 v26, v30

    move/from16 v2, v31

    move/from16 v27, v35

    move/from16 v1, v36

    move/from16 v26, v3

    goto :goto_23b

    .line 333
    :cond_21c
    move/from16 v37, v2

    move/from16 v25, v3

    move/from16 v38, v4

    move v9, v7

    move/from16 v3, v26

    move/from16 v6, v27

    move/from16 v4, v28

    move/from16 v7, v29

    move/from16 v26, v30

    move/from16 v2, v31

    move/from16 v27, v0

    .line 331
    move/from16 v31, v2

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v30, v26

    move/from16 v26, v3

    :goto_23b
    add-int/lit8 v2, v37, -0x1

    move v7, v9

    move/from16 v3, v25

    move/from16 v0, v27

    move/from16 v4, v38

    const/16 v9, 0x3e9

    move/from16 v27, v6

    const/4 v6, 0x0

    goto/16 :goto_d1

    .line 422
    :cond_24b
    move/from16 v25, v3

    move/from16 v38, v4

    move v9, v7

    const/4 v0, 0x0

    .line 423
    :goto_251
    if-eqz v20, :cond_2c8

    const/16 v10, 0xa

    if-ge v0, v10, :cond_2c8

    .line 424
    add-int/lit8 v20, v0, 0x1

    .line 425
    nop

    .line 427
    const/4 v0, 0x0

    :goto_25b
    if-ge v0, v9, :cond_283

    .line 428
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 429
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_27f

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_27f

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_280

    .line 430
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 431
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    goto :goto_280

    .line 429
    :cond_27f
    const/4 v7, 0x1

    .line 427
    :cond_280
    :goto_280
    add-int/lit8 v0, v0, 0x1

    goto :goto_25b

    .line 435
    :cond_283
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v22, 0x0

    :goto_287
    if-ge v5, v9, :cond_2c2

    .line 436
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 437
    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_2b9

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2b9

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-ne v0, v7, :cond_2b9

    .line 438
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    const/4 v4, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v3, v11

    move/from16 v26, v5

    move-wide v5, v12

    move v10, v7

    move/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 440
    move/from16 v22, v10

    goto :goto_2bc

    .line 437
    :cond_2b9
    move/from16 v26, v5

    move v10, v7

    .line 435
    :cond_2bc
    :goto_2bc
    add-int/lit8 v5, v26, 0x1

    move v7, v10

    const/16 v10, 0xa

    goto :goto_287

    :cond_2c2
    move v10, v7

    move/from16 v0, v20

    move/from16 v20, v22

    goto :goto_251

    .line 423
    :cond_2c8
    const/4 v10, 0x1

    .line 446
    nop

    .line 448
    move/from16 v7, v24

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    :goto_2d3
    if-ltz v7, :cond_41d

    .line 449
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 450
    iget-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_40b

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_40b

    .line 451
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v40, v3

    move-object/from16 p1, v4

    move-wide v3, v12

    move/from16 v41, v5

    move/from16 v42, v6

    move-wide v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_366

    const/16 v1, 0x12

    if-eq v0, v1, :cond_366

    const/16 v1, 0x14

    if-eq v0, v1, :cond_311

    .line 491
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v0, v10

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v0, p1

    goto :goto_341

    .line 478
    :cond_311
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v11, v0, :cond_347

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v2, v2, v18

    if-gez v2, :cond_349

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v3, v18, v16

    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 495
    :goto_341
    move/from16 v5, v25

    move/from16 v2, v38

    goto/16 :goto_3b1

    .line 478
    :cond_347
    move-object/from16 v0, p1

    .line 484
    :cond_349
    add-int/lit8 v11, v11, 0x1

    .line 485
    move/from16 v2, v38

    if-le v11, v2, :cond_363

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 495
    :cond_363
    move/from16 v5, v25

    goto :goto_3b1

    .line 454
    :cond_366
    move-object/from16 v0, p1

    move/from16 v2, v38

    const/16 v1, 0x14

    .line 457
    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v3, v10

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 458
    add-int/lit8 v9, v9, 0x1

    .line 459
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_391

    .line 460
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v4, v42

    if-ne v4, v3, :cond_38a

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v5, v40

    if-ne v5, v3, :cond_38a

    .line 465
    add-int/lit8 v20, v20, 0x1

    move v6, v4

    move v3, v5

    goto :goto_393

    .line 467
    :cond_38a
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 468
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_393

    .line 471
    :cond_391
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 473
    :goto_393
    sub-int v4, v9, v20

    move/from16 v5, v25

    if-le v4, v5, :cond_3ad

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cached #"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 495
    :cond_3ad
    move/from16 v40, v3

    move/from16 v42, v6

    :goto_3b1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_3c7

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_3c7

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v1, :cond_3c7

    .line 503
    const-string v1, "isolated not needed"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_3ec

    .line 506
    :cond_3c7
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 507
    if-eqz v1, :cond_3ec

    .line 508
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/am/UidRecord;->ephemeral:Z

    .line 509
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-le v3, v4, :cond_3e4

    .line 510
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 512
    :cond_3e4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_3ec

    .line 513
    iput-boolean v10, v1, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 518
    :cond_3ec
    :goto_3ec
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v3, 0xf

    if-lt v1, v3, :cond_403

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_403

    .line 520
    move/from16 v0, v41

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    move/from16 v3, v40

    move/from16 v6, v42

    move v5, v0

    goto :goto_415

    .line 518
    :cond_403
    move/from16 v0, v41

    .line 448
    move v1, v5

    move/from16 v3, v40

    move/from16 v6, v42

    goto :goto_414

    .line 450
    :cond_40b
    move v0, v5

    move v4, v6

    move/from16 v1, v25

    move/from16 v2, v38

    move v5, v3

    .line 448
    move v6, v4

    move v3, v5

    :goto_414
    move v5, v0

    :goto_415
    add-int/lit8 v7, v7, -0x1

    move/from16 v25, v1

    move/from16 v38, v2

    goto/16 :goto_2d3

    .line 525
    :cond_41d
    move v0, v5

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->incrementProcStateSeqAndNotifyAppsLocked()V

    .line 527
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 529
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9, v11, v0}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v0

    .line 531
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v1, :cond_43c

    .line 534
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 537
    :cond_43c
    if-eqz v0, :cond_44b

    .line 538
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 539
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v1

    .line 538
    const/4 v2, 0x0

    invoke-virtual {v0, v12, v13, v2, v1}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto :goto_44c

    .line 537
    :cond_44b
    const/4 v2, 0x0

    .line 542
    :goto_44c
    const/4 v0, 0x0

    .line 545
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_454

    .line 546
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 548
    :cond_454
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    sub-int/2addr v1, v10

    :goto_45b
    if-ltz v1, :cond_535

    .line 549
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 550
    nop

    .line 551
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_52f

    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 552
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_47e

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v4, v6, :cond_47b

    goto :goto_47e

    :cond_47b
    const/4 v5, -0x1

    goto/16 :goto_530

    .line 558
    :cond_47e
    :goto_47e
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_4c7

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v4, :cond_4c7

    .line 562
    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_498

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v4, :cond_4b1

    .line 564
    :cond_498
    iput-wide v14, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 565
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_4b1

    .line 570
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v4, v6, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    :cond_4b1
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v4, :cond_4c5

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v4, :cond_4c5

    .line 575
    const/4 v6, 0x2

    .line 576
    if-nez v0, :cond_4c1

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    :cond_4c1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d9

    .line 589
    :cond_4c5
    move v6, v2

    goto :goto_4d9

    .line 582
    :cond_4c7
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v4, :cond_4d4

    .line 583
    const/4 v6, 0x4

    .line 584
    iget v4, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 585
    iput-boolean v2, v3, Lcom/android/server/am/UidRecord;->idle:Z

    goto :goto_4d5

    .line 582
    :cond_4d4
    move v6, v2

    .line 587
    :goto_4d5
    const-wide/16 v9, 0x0

    iput-wide v9, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 589
    :goto_4d9
    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v7, 0xc

    if-le v4, v7, :cond_4e1

    const/4 v4, 0x1

    goto :goto_4e2

    :cond_4e1
    move v4, v2

    .line 591
    :goto_4e2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v7, :cond_4ea

    const/4 v7, 0x1

    goto :goto_4eb

    :cond_4ea
    move v7, v2

    .line 593
    :goto_4eb
    if-ne v4, v7, :cond_4f1

    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-ne v4, v5, :cond_4f9

    .line 594
    :cond_4f1
    if-eqz v7, :cond_4f6

    const/16 v4, 0x8

    goto :goto_4f8

    :cond_4f6
    const/16 v4, 0x10

    :goto_4f8
    or-int/2addr v6, v4

    .line 596
    :cond_4f9
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    iput v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 597
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v4, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 598
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v4, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 599
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v4, v5, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 600
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 601
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 602
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v4, :cond_530

    .line 603
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    goto :goto_530

    .line 551
    :cond_52f
    const/4 v5, -0x1

    .line 548
    :cond_530
    :goto_530
    add-int/lit8 v1, v1, -0x1

    const/4 v10, 0x1

    goto/16 :goto_45b

    .line 607
    :cond_535
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_53c

    .line 608
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 611
    :cond_53c
    if-eqz v0, :cond_558

    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_544
    if-ltz v1, :cond_558

    .line 615
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidRecord;

    iget v3, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 614
    add-int/lit8 v1, v1, -0x1

    goto :goto_544

    .line 619
    :cond_558
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_572

    .line 620
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 625
    :cond_572
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 636
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 637
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 638
    return-void

    :pswitch_data_588
    .packed-switch 0x11
        :pswitch_144  #00000011
        :pswitch_144  #00000012
        :pswitch_144  #00000013
    .end packed-switch
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 216
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 218
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 224
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v8, 0x3e9

    const/16 v2, 0x384

    if-lt v1, v2, :cond_1e

    .line 225
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v8

    .line 226
    :goto_1f
    const/4 v5, 0x0

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 226
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    .line 228
    if-eqz p2, :cond_39

    iget-boolean p2, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-ne v0, p2, :cond_36

    .line 229
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result p1

    if-ne p1, v8, :cond_39

    .line 232
    :cond_36
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 234
    :cond_39
    return v1
.end method
