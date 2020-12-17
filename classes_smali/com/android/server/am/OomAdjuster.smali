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

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mAppCompact:Lcom/android/server/am/AppCompactor;

.field mBServiceAppThreshold:I

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field mEnableProcessGroupCgroupFollow:Z

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field mProcessGroupCgroupFollowDex2oatOnly:Z

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
.method static constructor <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .registers 9
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"  # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"  # Lcom/android/server/am/ActiveUids;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 137
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 138
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 139
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 145
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 151
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 162
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 168
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 170
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 172
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 709
    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 180
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 181
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 182
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 184
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 185
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 186
    new-instance v2, Lcom/android/server/am/AppCompactor;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppCompactor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 188
    const-string/jumbo v2, "kona"

    const-string/jumbo v3, "ro.product.board"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_bb

    .line 189
    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v4, "5000"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 190
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 191
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string v3, "false"

    const-string/jumbo v4, "ro.vendor.qti.sys.fw.bservice_enable"

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 192
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v4, "ro.vendor.qti.cgroup_follow.enable"

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 193
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v4, "ro.vendor.qti.cgroup_follow.dex2oat_only"

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 198
    :cond_bb
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v3, -0xa

    const-string v4, "OomAdjuster"

    invoke-direct {v2, v4, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object v0, v2

    .line 200
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 201
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 202
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$TycrMfpYu_LfNv_I2DM8ANoONEE;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$TycrMfpYu_LfNv_I2DM8ANoONEE;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .registers 28
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"  # Z
    .param p3, "now"  # J
    .param p5, "nowElapsed"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1767
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AmsInjector;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1769
    const/4 v3, 0x1

    .line 1771
    .local v3, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_1a

    .line 1772
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    .line 1775
    :cond_1a
    const/4 v4, 0x0

    .line 1778
    .local v4, "changes":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->useCompaction()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_94

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_94

    .line 1780
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v5, :cond_62

    .line 1784
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v5, 0xc8

    if-gt v0, v5, :cond_48

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x2bc

    if-eq v0, v5, :cond_42

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x258

    if-ne v0, v5, :cond_48

    .line 1787
    :cond_42
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_94

    .line 1788
    :cond_48
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v5, 0x3e7

    const/16 v6, 0x384

    if-lt v0, v6, :cond_54

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v5, :cond_94

    :cond_54
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v6, :cond_94

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v5, :cond_94

    .line 1792
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_94

    .line 1794
    :cond_62
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_7a

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_7a

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1800
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1801
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_94

    .line 1802
    :cond_7a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_94

    .line 1803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_94

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1805
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1806
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 1810
    :cond_94
    :goto_94
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v7, "ActivityManager"

    if-eq v0, v5, :cond_f3

    .line 1811
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1812
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_bb

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_bb

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_eb

    .line 1813
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    .end local v0  # "msg":Ljava/lang/String;
    :cond_eb
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1818
    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    .line 1821
    :cond_f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v8

    .line 1822
    .local v8, "curSchedGroup":I
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v6, " to "

    if-eq v0, v8, :cond_281

    .line 1823
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1824
    .local v5, "oldSchedGroup":I
    iput v8, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1825
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_111

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_111

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v13, :cond_135

    .line 1826
    :cond_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting sched group of "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    .restart local v0  # "msg":Ljava/lang/String;
    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    .end local v0  # "msg":Ljava/lang/String;
    :cond_135
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_154

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_154

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_154

    .line 1832
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v2, v0, v13}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1833
    const/4 v3, 0x0

    move/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_287

    .line 1836
    :cond_154
    const/4 v0, 0x3

    if-eqz v8, :cond_165

    const/4 v13, 0x1

    if-eq v8, v13, :cond_163

    if-eq v8, v0, :cond_161

    const/4 v13, 0x4

    if-eq v8, v13, :cond_161

    .line 1848
    const/4 v13, -0x1

    .local v13, "processGroup":I
    goto :goto_167

    .line 1842
    .end local v13  # "processGroup":I
    :cond_161
    const/4 v13, 0x5

    .line 1843
    .restart local v13  # "processGroup":I
    goto :goto_167

    .line 1845
    .end local v13  # "processGroup":I
    :cond_163
    const/4 v13, 0x7

    .line 1846
    .restart local v13  # "processGroup":I
    goto :goto_167

    .line 1838
    .end local v13  # "processGroup":I
    :cond_165
    const/4 v13, 0x0

    .line 1839
    .restart local v13  # "processGroup":I
    nop

    .line 1851
    :goto_167
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    move/from16 v18, v3

    .end local v3  # "success":Z
    .local v18, "success":Z
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v19, v6

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1852
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1851
    move-object/from16 v20, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v13, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1854
    const-string v3, "OomAdjuster"

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1f6

    .line 1856
    if-eq v5, v0, :cond_280

    .line 1857
    :try_start_188
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1858
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_1df

    .line 1860
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    .line 1861
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 1862
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1a7} :catch_1f3

    const-string v6, "UI_FIFO"

    if-eqz v0, :cond_1d4

    .line 1863
    :try_start_1ab
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 1865
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_280

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set RenderThread (TID "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") to FIFO"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    .line 1870
    :cond_1d4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_280

    .line 1871
    const-string v0, "Not setting RenderThread TID"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    .line 1876
    :cond_1df
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v6, -0xa

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1877
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1e8} :catch_1f3

    if-eqz v0, :cond_280

    .line 1879
    :try_start_1ea
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ea .. :try_end_1ef} :catch_1f0
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_1ef} :catch_1f3

    goto :goto_1f1

    .line 1881
    :catch_1f0
    move-exception v0

    .line 1883
    :goto_1f1
    goto/16 :goto_280

    .line 1915
    :catch_1f3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_265

    .line 1887
    :cond_1f6
    const/4 v0, 0x3

    if-ne v5, v0, :cond_280

    if-eq v8, v0, :cond_280

    .line 1889
    :try_start_1fb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1890
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_206} :catch_1f3

    if-eqz v0, :cond_254

    .line 1893
    :try_start_208
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_20a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_208 .. :try_end_20a} :catch_23d
    .catch Ljava/lang/SecurityException; {:try_start_208 .. :try_end_20a} :catch_226
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20a} :catch_1f3

    const/4 v6, 0x0

    :try_start_20b
    invoke-static {v0, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_20e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20b .. :try_end_20e} :catch_23d
    .catch Ljava/lang/SecurityException; {:try_start_20b .. :try_end_20e} :catch_226
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20e} :catch_264

    .line 1894
    :try_start_20e
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1895
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_225

    .line 1896
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_21b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20e .. :try_end_21b} :catch_23d
    .catch Ljava/lang/SecurityException; {:try_start_20e .. :try_end_21b} :catch_226
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_21b} :catch_1f3

    const/4 v6, 0x0

    :try_start_21c
    invoke-static {v0, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_21f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21c .. :try_end_21f} :catch_23d
    .catch Ljava/lang/SecurityException; {:try_start_21c .. :try_end_21f} :catch_226
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_21f} :catch_264

    .line 1898
    :try_start_21f
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v6, -0x4

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_225
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21f .. :try_end_225} :catch_23d
    .catch Ljava/lang/SecurityException; {:try_start_21f .. :try_end_225} :catch_226
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_225} :catch_1f3

    .line 1906
    :cond_225
    goto :goto_280

    .line 1904
    :catch_226
    move-exception v0

    .line 1905
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    nop

    .end local v0  # "e":Ljava/lang/SecurityException;
    goto :goto_280

    .line 1900
    :catch_23d
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    nop

    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_280

    .line 1909
    :cond_254
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_256} :catch_1f3

    const/4 v6, 0x0

    :try_start_257
    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1910
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_280

    .line 1911
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_263} :catch_264

    goto :goto_280

    .line 1915
    :catch_264
    move-exception v0

    .line 1916
    .local v0, "e":Ljava/lang/Exception;
    :goto_265
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v7, :cond_287

    .line 1917
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed setting thread priority of "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_287

    .line 1919
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_280
    :goto_280
    goto :goto_287

    .line 1822
    .end local v5  # "oldSchedGroup":I
    .end local v13  # "processGroup":I
    .end local v18  # "success":Z
    .restart local v3  # "success":Z
    :cond_281
    move/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 1922
    .end local v3  # "success":Z
    .restart local v18  # "success":Z
    :cond_287
    :goto_287
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_299

    .line 1923
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    .line 1924
    or-int/lit8 v4, v4, 0x1

    move v13, v4

    goto :goto_29a

    .line 1922
    :cond_299
    move v13, v4

    .line 1926
    .end local v4  # "changes":I
    .local v13, "changes":I
    :goto_29a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_2ba

    .line 1927
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    .line 1928
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2ba

    .line 1935
    :try_start_2af
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_2b8
    .catch Landroid/os/RemoteException; {:try_start_2af .. :try_end_2b8} :catch_2b9

    .line 1937
    goto :goto_2ba

    .line 1936
    :catch_2b9
    move-exception v0

    .line 1940
    :cond_2ba
    :goto_2ba
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_34b

    .line 1941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_2d8

    move/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    goto/16 :goto_355

    .line 1969
    :cond_2d8
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_310

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_304

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    .line 1970
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_2f8

    goto :goto_310

    :cond_2f8
    move/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    goto/16 :goto_3ae

    .line 1969
    :cond_304
    move/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    goto/16 :goto_3ae

    .line 1972
    :cond_310
    :goto_310
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_340

    .line 1973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1975
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 1973
    const/4 v7, 0x0

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v17, v8

    move/from16 v19, v13

    move-object/from16 v13, v20

    .end local v8  # "curSchedGroup":I
    .end local v13  # "changes":I
    .local v17, "curSchedGroup":I
    .local v19, "changes":I
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_3ae

    .line 1972
    .end local v17  # "curSchedGroup":I
    .end local v19  # "changes":I
    .restart local v8  # "curSchedGroup":I
    .restart local v13  # "changes":I
    :cond_340
    move/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    .end local v8  # "curSchedGroup":I
    .end local v13  # "changes":I
    .restart local v17  # "curSchedGroup":I
    .restart local v19  # "changes":I
    goto :goto_3ae

    .line 1940
    .end local v17  # "curSchedGroup":I
    .end local v19  # "changes":I
    .restart local v8  # "curSchedGroup":I
    .restart local v13  # "changes":I
    :cond_34b
    move/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    .line 1960
    .end local v8  # "curSchedGroup":I
    .end local v13  # "changes":I
    .restart local v17  # "curSchedGroup":I
    .restart local v19  # "changes":I
    :goto_355
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 1961
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1963
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 1961
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    .line 1964
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_3ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 1965
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " next pss in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_3ae
    :goto_3ae
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_444

    .line 1983
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3c6

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_3c6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_400

    .line 1984
    :cond_3c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1987
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    .end local v0  # "msg":Ljava/lang/String;
    :cond_400
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_408

    const/4 v0, 0x1

    goto :goto_409

    :cond_408
    const/4 v0, 0x0

    .line 1990
    .local v0, "setImportant":Z
    :goto_409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v3, :cond_411

    const/4 v3, 0x1

    goto :goto_412

    :cond_411
    const/4 v3, 0x0

    .line 1991
    .local v3, "curImportant":Z
    :goto_412
    if-eqz v0, :cond_41d

    if-nez v3, :cond_41d

    .line 1995
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    .line 1996
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 2000
    :cond_41d
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2002
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 2004
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2005
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_432

    .line 2006
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    .line 2008
    :cond_432
    if-nez p2, :cond_440

    .line 2009
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2010
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 2009
    invoke-virtual {v4, v2, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_443

    .line 2012
    :cond_440
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 2014
    .end local v0  # "setImportant":Z
    .end local v3  # "curImportant":Z
    :goto_443
    goto :goto_46f

    :cond_444
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_45a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_45a

    .line 2018
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_46f

    .line 2019
    :cond_45a
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_46f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_46f

    .line 2022
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2025
    :cond_46f
    :goto_46f
    if-eqz v19, :cond_505

    .line 2026
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_492

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v19

    .end local v19  # "changes":I
    .restart local v4  # "changes":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_494

    .end local v4  # "changes":I
    .restart local v19  # "changes":I
    :cond_492
    move/from16 v4, v19

    .line 2028
    .end local v19  # "changes":I
    .restart local v4  # "changes":I
    :goto_494
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2029
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 2030
    .local v0, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iput v4, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 2031
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 2032
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_507

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": changes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " foreground="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " source="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2032
    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_507

    .line 2025
    .end local v0  # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .end local v4  # "changes":I
    .restart local v19  # "changes":I
    :cond_505
    move/from16 v4, v19

    .line 2040
    .end local v19  # "changes":I
    .restart local v4  # "changes":I
    :cond_507
    :goto_507
    return v18
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z
    .registers 51
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"  # I
    .param p3, "TOP_APP"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"  # Z
    .param p5, "now"  # J
    .param p7, "cycleReEval"  # Z

    .line 835
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    move-wide/from16 v3, p5

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    .line 836
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_17

    .line 838
    return v2

    .line 842
    :cond_17
    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 844
    return v2

    .line 848
    :cond_1a
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_36

    .line 849
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 850
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 851
    const/16 v0, 0x14

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 852
    const/16 v0, 0x3e7

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 853
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 854
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 855
    return v2

    .line 858
    :cond_36
    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 859
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 860
    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 861
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 862
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 864
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 865
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 866
    .local v0, "appUid":I
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 868
    .local v15, "logUid":I
    iget v14, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 869
    .local v14, "prevAppAdj":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v13

    .line 871
    .local v13, "prevProcState":I
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v10, 0x2

    const-string v12, "ActivityManager"

    if-gtz v9, :cond_ed

    .line 874
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v9, :cond_60

    if-ne v15, v0, :cond_76

    .line 875
    :cond_60
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making fixed: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v12, v6}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_76
    const-string v6, "fixed"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 878
    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 879
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 880
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 881
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 882
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 887
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 888
    if-ne v7, v5, :cond_9d

    .line 889
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 890
    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 891
    const-string/jumbo v6, "pers-top-activity"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_b3

    .line 892
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 894
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 895
    const-string/jumbo v6, "pers-top-ui"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_b3

    .line 896
    :cond_ab
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 897
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 899
    :cond_b3
    :goto_b3
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v6, :cond_cd

    .line 900
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_c6

    .line 902
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 903
    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_cd

    .line 906
    :cond_c6
    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 907
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 910
    :cond_cd
    :goto_cd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 911
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 912
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 914
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v14, :cond_ea

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    if-ge v6, v13, :cond_e7

    goto :goto_ea

    :cond_e7
    move/from16 v18, v2

    goto :goto_ec

    :cond_ea
    :goto_ea
    const/16 v18, 0x1

    :goto_ec
    return v18

    .line 917
    :cond_ed
    const/4 v6, 0x3

    const/4 v11, 0x6

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 919
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v9

    .line 928
    .local v9, "PROCESS_STATE_CUR_TOP":I
    const/16 v16, 0x0

    .line 929
    .local v16, "foregroundActivities":Z
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v6

    if-eqz v6, :cond_137

    .line 934
    const/4 v6, 0x0

    .line 935
    .local v6, "schedGroup":I
    move/from16 v19, p2

    .line 936
    .local v19, "adj":I
    const/16 v20, 0x14

    .line 937
    .local v20, "procState":I
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 938
    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 939
    const-string v11, "cch-empty"

    iput-object v11, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 940
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_11a

    if-ne v15, v0, :cond_12e

    .line 941
    :cond_11a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making empty: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_12e
    move v5, v6

    move/from16 v2, v16

    move/from16 v6, v20

    move/from16 v20, v19

    goto/16 :goto_2a3

    .line 945
    .end local v6  # "schedGroup":I
    .end local v19  # "adj":I
    .end local v20  # "procState":I
    :cond_137
    if-ne v9, v10, :cond_16b

    if-ne v7, v5, :cond_16b

    .line 947
    const/4 v2, 0x0

    .line 948
    .local v2, "adj":I
    const/4 v6, 0x3

    .line 949
    .restart local v6  # "schedGroup":I
    const-string/jumbo v11, "top-activity"

    iput-object v11, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 950
    const/4 v11, 0x1

    .line 951
    .end local v16  # "foregroundActivities":Z
    .local v11, "foregroundActivities":Z
    move/from16 v16, v9

    .line 952
    .local v16, "procState":I
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v19, :cond_14f

    if-ne v15, v0, :cond_14c

    goto :goto_14f

    :cond_14c
    move/from16 v20, v2

    goto :goto_165

    .line 953
    :cond_14f
    :goto_14f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "adj":I
    .local v20, "adj":I
    const-string v2, "Making top: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :goto_165
    move v5, v6

    move v2, v11

    move/from16 v6, v16

    goto/16 :goto_2a3

    .line 955
    .end local v6  # "schedGroup":I
    .end local v11  # "foregroundActivities":Z
    .end local v20  # "adj":I
    .local v16, "foregroundActivities":Z
    :cond_16b
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_19e

    .line 956
    const/16 v2, 0x64

    .line 957
    .restart local v2  # "adj":I
    const/4 v6, 0x3

    .line 958
    .restart local v6  # "schedGroup":I
    const-string/jumbo v10, "running-remote-anim"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 959
    move v10, v9

    .line 960
    .local v10, "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_182

    if-ne v15, v0, :cond_17f

    goto :goto_182

    :cond_17f
    move/from16 v20, v2

    goto :goto_198

    .line 961
    :cond_182
    :goto_182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "adj":I
    .restart local v20  # "adj":I
    const-string v2, "Making running remote anim: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :goto_198
    move v5, v6

    move v6, v10

    move/from16 v2, v16

    goto/16 :goto_2a3

    .line 963
    .end local v6  # "schedGroup":I
    .end local v10  # "procState":I
    .end local v20  # "adj":I
    :cond_19e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_1cd

    .line 965
    const/4 v2, 0x0

    .line 966
    .restart local v2  # "adj":I
    const/4 v6, 0x2

    .line 967
    .restart local v6  # "schedGroup":I
    const-string/jumbo v10, "instrumentation"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 968
    const/4 v10, 0x5

    .line 969
    .restart local v10  # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_1b6

    if-ne v15, v0, :cond_1b3

    goto :goto_1b6

    :cond_1b3
    move/from16 v20, v2

    goto :goto_198

    .line 970
    :cond_1b6
    :goto_1b6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "adj":I
    .restart local v20  # "adj":I
    const-string v2, "Making instrumentation: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_198

    .line 972
    .end local v6  # "schedGroup":I
    .end local v10  # "procState":I
    .end local v20  # "adj":I
    :cond_1cd
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v2, v7, v6}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 977
    const/4 v2, 0x0

    .line 978
    .restart local v2  # "adj":I
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e6

    .line 979
    const/4 v6, 0x2

    goto :goto_1e7

    :cond_1e6
    const/4 v6, 0x0

    .line 980
    .restart local v6  # "schedGroup":I
    :goto_1e7
    const-string v10, "broadcast"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 981
    const/16 v10, 0xc

    .line 982
    .restart local v10  # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_1f7

    if-ne v15, v0, :cond_1f4

    goto :goto_1f7

    :cond_1f4
    move/from16 v20, v2

    goto :goto_198

    .line 983
    :cond_1f7
    :goto_1f7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "adj":I
    .restart local v20  # "adj":I
    const-string v2, "Making broadcast: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_198

    .line 985
    .end local v6  # "schedGroup":I
    .end local v10  # "procState":I
    .end local v20  # "adj":I
    :cond_20e
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_247

    .line 988
    const/4 v2, 0x0

    .line 989
    .restart local v2  # "adj":I
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v6, :cond_21d

    .line 990
    const/4 v6, 0x2

    goto :goto_21e

    :cond_21d
    const/4 v6, 0x0

    .line 991
    .restart local v6  # "schedGroup":I
    :goto_21e
    const-string v10, "exec-service"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 992
    const/16 v10, 0xb

    .line 993
    .restart local v10  # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_22f

    if-ne v15, v0, :cond_22b

    goto :goto_22f

    :cond_22b
    move/from16 v20, v2

    goto/16 :goto_198

    .line 994
    :cond_22f
    :goto_22f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "adj":I
    .restart local v20  # "adj":I
    const-string v2, "Making exec-service: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_198

    .line 997
    .end local v6  # "schedGroup":I
    .end local v10  # "procState":I
    .end local v20  # "adj":I
    :cond_247
    if-ne v7, v5, :cond_276

    .line 998
    const/4 v2, 0x0

    .line 999
    .restart local v2  # "adj":I
    const/4 v6, 0x0

    .line 1000
    .restart local v6  # "schedGroup":I
    const-string/jumbo v10, "top-sleeping"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1001
    const/4 v10, 0x1

    .line 1002
    .end local v16  # "foregroundActivities":Z
    .local v10, "foregroundActivities":Z
    move v11, v9

    .line 1003
    .local v11, "procState":I
    sget-boolean v16, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v16, :cond_25c

    if-ne v15, v0, :cond_259

    goto :goto_25c

    :cond_259
    move/from16 v20, v2

    goto :goto_272

    .line 1004
    :cond_25c
    :goto_25c
    move/from16 v20, v2

    .end local v2  # "adj":I
    .restart local v20  # "adj":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making top (sleeping): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :goto_272
    move v5, v6

    move v2, v10

    move v6, v11

    goto :goto_2a3

    .line 1008
    .end local v6  # "schedGroup":I
    .end local v10  # "foregroundActivities":Z
    .end local v11  # "procState":I
    .end local v20  # "adj":I
    .restart local v16  # "foregroundActivities":Z
    :cond_276
    const/4 v2, 0x0

    .line 1011
    .local v2, "schedGroup":I
    move/from16 v5, p2

    .line 1012
    .local v5, "adj":I
    const/16 v6, 0x14

    .line 1013
    .local v6, "procState":I
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1014
    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1015
    const-string v10, "cch-empty"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1016
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_28a

    if-ne v15, v0, :cond_29e

    .line 1017
    :cond_28a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_29e
    move/from16 v20, v5

    move v5, v2

    move/from16 v2, v16

    .end local v16  # "foregroundActivities":Z
    .local v2, "foregroundActivities":Z
    .local v5, "schedGroup":I
    .restart local v20  # "adj":I
    :goto_2a3
    const/16 v11, 0x64

    if-nez v2, :cond_2ee

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_2ee

    .line 1023
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v23, v9

    .end local v9  # "PROCESS_STATE_CUR_TOP":I
    .local v23, "PROCESS_STATE_CUR_TOP":I
    move-object v9, v10

    move-object/from16 v10, p1

    move v3, v11

    const/4 v4, 0x3

    const/16 v16, 0x6

    move/from16 v11, v20

    move-object v4, v12

    move v12, v2

    move/from16 v24, v13

    .end local v13  # "prevProcState":I
    .local v24, "prevProcState":I
    move v13, v6

    move/from16 v25, v14

    .end local v14  # "prevAppAdj":I
    .local v25, "prevAppAdj":I
    move v14, v5

    move/from16 v21, v15

    .end local v15  # "logUid":I
    .local v21, "logUid":I
    move v15, v0

    move/from16 v16, v21

    move/from16 v17, v23

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V

    .line 1025
    const/16 v9, 0x63

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v9

    .line 1028
    .local v9, "minLayer":I
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v10, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1029
    .end local v20  # "adj":I
    .local v10, "adj":I
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1030
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v6, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1031
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v5, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1033
    if-ne v10, v3, :cond_2ec

    .line 1034
    add-int v20, v10, v9

    move v9, v2

    move/from16 v10, v20

    .end local v10  # "adj":I
    .restart local v20  # "adj":I
    goto :goto_2fb

    .line 1033
    .end local v20  # "adj":I
    .restart local v10  # "adj":I
    :cond_2ec
    move v9, v2

    goto :goto_2fb

    .line 1022
    .end local v10  # "adj":I
    .end local v21  # "logUid":I
    .end local v23  # "PROCESS_STATE_CUR_TOP":I
    .end local v24  # "prevProcState":I
    .end local v25  # "prevAppAdj":I
    .local v9, "PROCESS_STATE_CUR_TOP":I
    .restart local v13  # "prevProcState":I
    .restart local v14  # "prevAppAdj":I
    .restart local v15  # "logUid":I
    .restart local v20  # "adj":I
    :cond_2ee
    move/from16 v23, v9

    move v3, v11

    move-object v4, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v21, v15

    .line 1038
    .end local v9  # "PROCESS_STATE_CUR_TOP":I
    .end local v13  # "prevProcState":I
    .end local v14  # "prevAppAdj":I
    .end local v15  # "logUid":I
    .restart local v21  # "logUid":I
    .restart local v23  # "PROCESS_STATE_CUR_TOP":I
    .restart local v24  # "prevProcState":I
    .restart local v25  # "prevAppAdj":I
    move v9, v2

    move/from16 v10, v20

    .end local v2  # "foregroundActivities":Z
    .end local v20  # "adj":I
    .local v9, "foregroundActivities":Z
    .restart local v10  # "adj":I
    :goto_2fb
    const/16 v2, 0x13

    if-le v6, v2, :cond_32b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_32b

    .line 1039
    const/16 v6, 0x13

    .line 1040
    const-string v2, "cch-rec"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1041
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_314

    move/from16 v11, v21

    .end local v21  # "logUid":I
    .local v11, "logUid":I
    if-ne v11, v0, :cond_32d

    goto :goto_316

    .end local v11  # "logUid":I
    .restart local v21  # "logUid":I
    :cond_314
    move/from16 v11, v21

    .line 1042
    .end local v21  # "logUid":I
    .restart local v11  # "logUid":I
    :goto_316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to cached recent: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32d

    .line 1038
    .end local v11  # "logUid":I
    .restart local v21  # "logUid":I
    :cond_32b
    move/from16 v11, v21

    .line 1046
    .end local v21  # "logUid":I
    .restart local v11  # "logUid":I
    :cond_32d
    :goto_32d
    const-string v12, ": "

    const-string v13, "Raise to "

    const/16 v14, 0xc8

    if-gt v10, v14, :cond_339

    const/4 v15, 0x3

    if-le v6, v15, :cond_3aa

    goto :goto_33a

    :cond_339
    const/4 v15, 0x3

    .line 1048
    :goto_33a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 1050
    const/16 v10, 0xc8

    .line 1051
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasLocationForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 1052
    const/4 v2, 0x3

    .line 1053
    .end local v6  # "procState":I
    .local v2, "procState":I
    const-string v6, "fg-service-location"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    goto :goto_355

    .line 1056
    .end local v2  # "procState":I
    .restart local v6  # "procState":I
    :cond_34f
    const/4 v2, 0x5

    .line 1057
    .end local v6  # "procState":I
    .restart local v2  # "procState":I
    const-string v6, "fg-service"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    .line 1059
    .end local v2  # "procState":I
    .restart local v6  # "procState":I
    :goto_355
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1060
    const/4 v5, 0x2

    .line 1061
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_35f

    if-ne v11, v0, :cond_3aa

    .line 1062
    :cond_35f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3aa

    .line 1065
    :cond_37f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-eqz v2, :cond_3aa

    .line 1067
    const/16 v10, 0xc8

    .line 1068
    const/4 v6, 0x7

    .line 1069
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1070
    const-string v2, "has-overlay-ui"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1071
    const/4 v5, 0x2

    .line 1072
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_396

    if-ne v11, v0, :cond_3aa

    .line 1073
    :cond_396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to overlay ui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_3aa
    :goto_3aa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_3e9

    const/16 v2, 0x32

    if-le v10, v2, :cond_3e9

    iget-wide v2, v7, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v15, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v15, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v14

    const/16 v14, 0x64

    cmp-long v2, v2, p5

    if-gtz v2, :cond_3c7

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v15, 0x2

    if-gt v2, v15, :cond_3ec

    goto :goto_3c8

    :cond_3c7
    const/4 v15, 0x2

    .line 1084
    :goto_3c8
    const/16 v10, 0x32

    .line 1085
    const-string v2, "fg-service-act"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1086
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3d4

    if-ne v11, v0, :cond_3ec

    .line 1087
    :cond_3d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3ec

    .line 1081
    :cond_3e9
    const/16 v14, 0x64

    const/4 v15, 0x2

    .line 1091
    :cond_3ec
    :goto_3ec
    const/16 v3, 0x9

    const/16 v2, 0xc8

    if-gt v10, v2, :cond_3f4

    if-le v6, v3, :cond_422

    .line 1093
    :cond_3f4
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_422

    .line 1097
    const/16 v10, 0xc8

    .line 1098
    const/16 v6, 0x9

    .line 1099
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1100
    const-string v2, "force-imp"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1101
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1102
    const/4 v5, 0x2

    .line 1103
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_40e

    if-ne v11, v0, :cond_422

    .line 1104
    :cond_40e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise to force imp: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_422
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v2

    if-eqz v2, :cond_47c

    .line 1110
    const/16 v2, 0x190

    if-le v10, v2, :cond_458

    .line 1112
    const/16 v10, 0x190

    .line 1113
    const/4 v5, 0x0

    .line 1114
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1115
    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1116
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_444

    if-ne v11, v0, :cond_458

    .line 1117
    :cond_444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_458
    const/16 v2, 0xe

    if-le v6, v2, :cond_47c

    .line 1121
    const/16 v6, 0xe

    .line 1122
    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1123
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_468

    if-ne v11, v0, :cond_47c

    .line 1124
    :cond_468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_47c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-eqz v2, :cond_4ce

    .line 1130
    const/16 v2, 0x258

    if-le v10, v2, :cond_4aa

    .line 1133
    const/16 v10, 0x258

    .line 1134
    const/4 v5, 0x0

    .line 1135
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1136
    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1137
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_496

    if-ne v11, v0, :cond_4aa

    .line 1138
    :cond_496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :cond_4aa
    const/16 v2, 0xf

    if-le v6, v2, :cond_4ce

    .line 1142
    const/16 v6, 0xf

    .line 1143
    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1144
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_4ba

    if-ne v11, v0, :cond_4ce

    .line 1145
    :cond_4ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_4ce
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v2

    const/16 v14, 0x10

    if-eqz v2, :cond_528

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_528

    .line 1151
    const/16 v2, 0x2bc

    if-le v10, v2, :cond_505

    .line 1155
    const/16 v10, 0x2bc

    .line 1156
    const/4 v5, 0x0

    .line 1157
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1158
    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1159
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_4f1

    if-ne v11, v0, :cond_505

    .line 1160
    :cond_4f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_505
    if-le v6, v14, :cond_528

    .line 1164
    const/16 v6, 0x10

    .line 1165
    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1166
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_514

    if-ne v11, v0, :cond_528

    .line 1167
    :cond_514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_528
    if-nez p7, :cond_52c

    move v2, v10

    goto :goto_534

    :cond_52c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_534
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1181
    if-nez p7, :cond_53b

    .line 1182
    move v2, v6

    goto :goto_543

    .line 1183
    :cond_53b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1181
    :goto_543
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1185
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1186
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1188
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/am/BackupRecord;

    .line 1189
    .local v15, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v15, :cond_5c9

    iget-object v2, v15, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v2, :cond_5c9

    .line 1191
    const/16 v2, 0x12c

    if-le v10, v2, :cond_5a5

    .line 1192
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_57d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_57d
    const/16 v2, 0x12c

    .line 1194
    .end local v10  # "adj":I
    .local v2, "adj":I
    if-le v6, v3, :cond_583

    .line 1195
    const/16 v6, 0x9

    .line 1197
    :cond_583
    const-string v10, "backup"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1198
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_58d

    if-ne v11, v0, :cond_5a1

    .line 1199
    :cond_58d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to backup: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_5a1
    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v10, v2

    .line 1203
    .end local v2  # "adj":I
    .restart local v10  # "adj":I
    :cond_5a5
    const/16 v2, 0xa

    if-le v6, v2, :cond_5c9

    .line 1204
    const/16 v6, 0xa

    .line 1205
    const-string v2, "backup"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1206
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_5b5

    if-ne v11, v0, :cond_5c9

    .line 1207
    :cond_5b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to backup: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_5c9
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    move/from16 v40, v10

    move v10, v2

    move/from16 v2, v40

    .line 1213
    .restart local v2  # "adj":I
    .local v10, "is":I
    :goto_5d6
    if-ltz v10, :cond_a4f

    if-gtz v2, :cond_5ef

    if-eqz v5, :cond_5ef

    const/4 v3, 0x2

    if-le v6, v3, :cond_5e0

    goto :goto_5ef

    :cond_5e0
    move v14, v0

    move-object/from16 v28, v1

    move/from16 v27, v5

    move-object v10, v7

    move/from16 v33, v9

    move-object/from16 v29, v15

    move-object v7, v4

    move-wide/from16 v4, p5

    goto/16 :goto_a5e

    .line 1217
    :cond_5ef
    :goto_5ef
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1218
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    iget-boolean v14, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v14, :cond_68e

    .line 1219
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1220
    const/16 v14, 0xb

    if-le v6, v14, :cond_62a

    .line 1221
    const/16 v6, 0xb

    .line 1222
    const-string/jumbo v14, "started-services"

    iput-object v14, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1223
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v14, :cond_613

    if-ne v11, v0, :cond_610

    goto :goto_613

    :cond_610
    move/from16 v27, v5

    goto :goto_62c

    .line 1224
    :cond_613
    :goto_613
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v5

    .end local v5  # "schedGroup":I
    .local v27, "schedGroup":I
    const-string v5, "Raise procstate to started service: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62c

    .line 1220
    .end local v27  # "schedGroup":I
    .restart local v5  # "schedGroup":I
    :cond_62a
    move/from16 v27, v5

    .line 1228
    .end local v5  # "schedGroup":I
    .restart local v27  # "schedGroup":I
    :goto_62c
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v5, :cond_644

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v5

    if-nez v5, :cond_644

    .line 1233
    const/16 v5, 0x1f4

    if-le v2, v5, :cond_63e

    .line 1234
    const-string v5, "cch-started-ui-services"

    iput-object v5, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1260
    :cond_63e
    move-object/from16 v28, v1

    move-object/from16 v29, v15

    const/4 v5, 0x0

    goto :goto_695

    .line 1237
    :cond_644
    move v14, v6

    .end local v6  # "procState":I
    .local v14, "procState":I
    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v28, v1

    .end local v1  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .local v28, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v30, v14

    move-object/from16 v29, v15

    .end local v14  # "procState":I
    .end local v15  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v29, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v30, "procState":I
    iget-wide v14, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v14

    cmp-long v1, p5, v5

    if-gez v1, :cond_682

    .line 1241
    const/16 v1, 0x1f4

    if-le v2, v1, :cond_680

    .line 1242
    const/16 v1, 0x1f4

    .line 1243
    .end local v2  # "adj":I
    .local v1, "adj":I
    const-string/jumbo v2, "started-services"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1244
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_667

    if-ne v11, v0, :cond_67b

    .line 1245
    :cond_667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to started service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_67b
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v2, v1

    goto :goto_683

    .line 1241
    .end local v1  # "adj":I
    .restart local v2  # "adj":I
    :cond_680
    const/4 v5, 0x0

    goto :goto_683

    .line 1237
    :cond_682
    const/4 v5, 0x0

    .line 1254
    :goto_683
    const/16 v1, 0x1f4

    if-le v2, v1, :cond_68b

    .line 1255
    const-string v1, "cch-started-services"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1260
    :cond_68b
    move/from16 v6, v30

    goto :goto_695

    .line 1218
    .end local v27  # "schedGroup":I
    .end local v28  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v29  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v30  # "procState":I
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5  # "schedGroup":I
    .restart local v6  # "procState":I
    .restart local v15  # "backupTarget":Lcom/android/server/am/BackupRecord;
    :cond_68e
    move-object/from16 v28, v1

    move/from16 v27, v5

    move-object/from16 v29, v15

    const/4 v5, 0x0

    .line 1260
    .end local v1  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v5  # "schedGroup":I
    .end local v15  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v27  # "schedGroup":I
    .restart local v28  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v29  # "backupTarget":Lcom/android/server/am/BackupRecord;
    :goto_695
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v14

    .line 1261
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move/from16 v40, v6

    move v6, v1

    move/from16 v1, v40

    .line 1262
    .local v1, "procState":I
    .local v6, "conni":I
    :goto_6a4
    if-ltz v6, :cond_a2e

    if-gtz v2, :cond_6b9

    if-eqz v27, :cond_6b9

    const/4 v5, 0x2

    if-le v1, v5, :cond_6ae

    goto :goto_6b9

    :cond_6ae
    move-wide/from16 v5, p5

    move v14, v0

    move/from16 v33, v9

    move/from16 v34, v10

    move-object v10, v7

    move-object v7, v4

    goto/16 :goto_a3c

    .line 1266
    :cond_6b9
    :goto_6b9
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1267
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v18, 0x0

    move v15, v1

    move v1, v2

    move/from16 v2, v18

    .line 1268
    .local v1, "adj":I
    .local v2, "i":I
    .local v15, "procState":I
    :goto_6c5
    move/from16 v26, v0

    .end local v0  # "appUid":I
    .local v26, "appUid":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a08

    if-gtz v1, :cond_6e7

    if-eqz v27, :cond_6e7

    const/4 v0, 0x2

    if-le v15, v0, :cond_6d5

    goto :goto_6e7

    :cond_6d5
    move/from16 v17, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v32, v14

    move/from16 v14, v26

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    goto/16 :goto_a1c

    .line 1274
    :cond_6e7
    :goto_6e7
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 1275
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v30, v1

    .end local v1  # "adj":I
    .local v30, "adj":I
    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v7, :cond_709

    .line 1277
    move/from16 v22, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v32, v14

    move/from16 v14, v26

    move-object v10, v7

    goto :goto_74b

    .line 1280
    :cond_709
    const/16 v31, 0x0

    .line 1281
    .local v31, "trackedProcState":Z
    iget v1, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_980

    .line 1282
    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1283
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v33, v9

    move-object/from16 v32, v14

    move/from16 v14, v26

    move-object v9, v0

    .end local v0  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v26  # "appUid":I
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v14, "appUid":I
    .local v32, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v33, "foregroundActivities":Z
    move-object/from16 v0, p0

    move-object/from16 v26, v1

    .end local v1  # "client":Lcom/android/server/am/ProcessRecord;
    .local v26, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v22, v2

    move/from16 v34, v10

    const/4 v10, 0x0

    .end local v2  # "i":I
    .end local v10  # "is":I
    .local v22, "i":I
    .local v34, "is":I
    move/from16 v2, p2

    move-object/from16 v35, v3

    .end local v3  # "s":Lcom/android/server/am/ServiceRecord;
    .local v35, "s":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v3, p3

    move-object/from16 v36, v4

    move/from16 v4, p4

    move-object/from16 v18, v5

    move/from16 v17, v6

    .end local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6  # "conni":I
    .local v17, "conni":I
    .local v18, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-wide/from16 v5, p5

    move-object v10, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1285
    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move v3, v15

    move/from16 v4, v30

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_755

    .line 1286
    nop

    .line 1271
    .end local v17  # "conni":I
    .end local v18  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22  # "i":I
    .end local v31  # "trackedProcState":Z
    .end local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v33  # "foregroundActivities":Z
    .end local v34  # "is":I
    .end local v35  # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v2  # "i":I
    .restart local v3  # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6  # "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10  # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v26, "appUid":I
    :goto_74b
    move-wide/from16 v1, p5

    move/from16 v3, v30

    move-object/from16 v4, v35

    move-object/from16 v7, v36

    .end local v2  # "i":I
    .end local v3  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6  # "conni":I
    .end local v9  # "foregroundActivities":Z
    .end local v10  # "is":I
    .end local v26  # "appUid":I
    .local v14, "appUid":I
    .restart local v17  # "conni":I
    .restart local v18  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22  # "i":I
    .restart local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v33  # "foregroundActivities":Z
    .restart local v34  # "is":I
    .restart local v35  # "s":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_9f4

    .line 1289
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v26, "client":Lcom/android/server/am/ProcessRecord;
    .restart local v31  # "trackedProcState":Z
    :cond_755
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    .line 1290
    .local v0, "clientAdj":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 1292
    .local v1, "clientProcState":I
    const/16 v2, 0x11

    if-lt v1, v2, :cond_763

    .line 1296
    const/16 v1, 0x14

    .line 1298
    :cond_763
    const/4 v2, 0x0

    .line 1299
    .local v2, "adjType":Ljava/lang/String;
    iget v3, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_7a7

    .line 1302
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v3, :cond_788

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v3

    if-nez v3, :cond_788

    .line 1307
    move/from16 v3, v30

    .end local v30  # "adj":I
    .local v3, "adj":I
    if-le v3, v0, :cond_77b

    .line 1308
    const-string v2, "cch-bound-ui-services"

    .line 1310
    :cond_77b
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1311
    move v0, v3

    .line 1312
    move v1, v15

    move v5, v1

    move-object/from16 v30, v2

    move-object/from16 v4, v35

    move-wide/from16 v1, p5

    goto :goto_7b3

    .line 1302
    .end local v3  # "adj":I
    .restart local v30  # "adj":I
    :cond_788
    move/from16 v3, v30

    .line 1314
    .end local v30  # "adj":I
    .restart local v3  # "adj":I
    move-object/from16 v4, v35

    .end local v35  # "s":Lcom/android/server/am/ServiceRecord;
    .local v4, "s":Lcom/android/server/am/ServiceRecord;
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v35, v1

    move-object/from16 v30, v2

    .end local v1  # "clientProcState":I
    .end local v2  # "adjType":Ljava/lang/String;
    .local v30, "adjType":Ljava/lang/String;
    .local v35, "clientProcState":I
    iget-wide v1, v7, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v1

    move-wide/from16 v1, p5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_7b1

    .line 1321
    if-le v3, v0, :cond_7a3

    .line 1322
    const-string v5, "cch-bound-services"

    move-object/from16 v30, v5

    .line 1324
    :cond_7a3
    move v0, v3

    move/from16 v5, v35

    goto :goto_7b3

    .line 1299
    .end local v3  # "adj":I
    .end local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v1  # "clientProcState":I
    .restart local v2  # "adjType":Ljava/lang/String;
    .local v30, "adj":I
    .local v35, "s":Lcom/android/server/am/ServiceRecord;
    :cond_7a7
    move/from16 v3, v30

    move-object/from16 v4, v35

    move/from16 v35, v1

    move-object/from16 v30, v2

    move-wide/from16 v1, p5

    .line 1328
    .end local v1  # "clientProcState":I
    .end local v2  # "adjType":Ljava/lang/String;
    .restart local v3  # "adj":I
    .restart local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .local v30, "adjType":Ljava/lang/String;
    .local v35, "clientProcState":I
    :cond_7b1
    move/from16 v5, v35

    .end local v35  # "clientProcState":I
    .local v5, "clientProcState":I
    :goto_7b3
    if-le v3, v0, :cond_847

    .line 1336
    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v6, :cond_7d7

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v6

    if-nez v6, :cond_7d7

    const/16 v6, 0xc8

    if-le v0, v6, :cond_7d7

    .line 1338
    const/16 v6, 0x384

    if-lt v3, v6, :cond_7d1

    .line 1339
    const-string v30, "cch-bound-ui-services"

    move-object/from16 v7, v26

    move/from16 v26, v0

    move/from16 v0, v27

    goto/16 :goto_84d

    .line 1338
    :cond_7d1
    move-object/from16 v7, v26

    move/from16 v26, v0

    goto/16 :goto_84b

    .line 1343
    :cond_7d7
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x48

    if-eqz v6, :cond_7f4

    .line 1345
    const/16 v6, -0x2bc

    if-lt v0, v6, :cond_7e5

    .line 1346
    move v6, v0

    const/16 v7, 0x64

    .local v6, "newAdj":I
    goto :goto_82c

    .line 1349
    .end local v6  # "newAdj":I
    :cond_7e5
    const/16 v6, -0x2bc

    .line 1350
    .restart local v6  # "newAdj":I
    const/16 v27, 0x2

    .line 1351
    const/4 v15, 0x0

    .line 1352
    iget v7, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v15, v7, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1353
    const/16 v31, 0x1

    const/16 v7, 0x64

    goto :goto_82c

    .line 1355
    .end local v6  # "newAdj":I
    :cond_7f4
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_807

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_807

    const/16 v6, 0xfa

    if-le v3, v6, :cond_807

    .line 1358
    const/16 v6, 0xfa

    const/16 v7, 0x64

    .restart local v6  # "newAdj":I
    goto :goto_82c

    .line 1359
    .end local v6  # "newAdj":I
    :cond_807
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x40000000  # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_81a

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_81c

    if-le v3, v6, :cond_81c

    .line 1362
    const/16 v7, 0xc8

    move v6, v7

    const/16 v7, 0x64

    .local v7, "newAdj":I
    goto :goto_82c

    .line 1359
    .end local v7  # "newAdj":I
    :cond_81a
    const/16 v6, 0xc8

    .line 1363
    :cond_81c
    if-lt v0, v6, :cond_822

    .line 1364
    move v6, v0

    const/16 v7, 0x64

    .restart local v6  # "newAdj":I
    goto :goto_82c

    .line 1366
    .end local v6  # "newAdj":I
    :cond_822
    const/16 v7, 0x64

    if-le v3, v7, :cond_82b

    .line 1368
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6  # "newAdj":I
    goto :goto_82c

    .line 1370
    .end local v6  # "newAdj":I
    :cond_82b
    move v6, v3

    .line 1373
    .restart local v6  # "newAdj":I
    :goto_82c
    move-object/from16 v7, v26

    move/from16 v26, v0

    .end local v0  # "clientAdj":I
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    .local v26, "clientAdj":I
    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-nez v0, :cond_837

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1376
    :cond_837
    if-le v3, v6, :cond_844

    .line 1377
    move v0, v6

    .line 1378
    .end local v3  # "adj":I
    .local v0, "adj":I
    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1379
    const-string/jumbo v30, "service"

    move v3, v0

    move/from16 v0, v27

    goto :goto_84d

    .line 1376
    .end local v0  # "adj":I
    .restart local v3  # "adj":I
    :cond_844
    move/from16 v0, v27

    goto :goto_84d

    .line 1328
    .end local v6  # "newAdj":I
    .end local v7  # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "clientAdj":I
    .local v26, "client":Lcom/android/server/am/ProcessRecord;
    :cond_847
    move-object/from16 v7, v26

    move/from16 v26, v0

    .line 1383
    .end local v0  # "clientAdj":I
    .restart local v7  # "client":Lcom/android/server/am/ProcessRecord;
    .local v26, "clientAdj":I
    :goto_84b
    move/from16 v0, v27

    .end local v27  # "schedGroup":I
    .local v0, "schedGroup":I
    :goto_84d
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v27, 0x800004

    and-int v6, v6, v27

    if-nez v6, :cond_8c5

    .line 1388
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v6

    .line 1389
    .local v6, "curSchedGroup":I
    if-le v6, v0, :cond_868

    .line 1390
    move/from16 v27, v0

    .end local v0  # "schedGroup":I
    .restart local v27  # "schedGroup":I
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_866

    .line 1391
    move v0, v6

    .end local v27  # "schedGroup":I
    .restart local v0  # "schedGroup":I
    goto :goto_86a

    .line 1393
    .end local v0  # "schedGroup":I
    .restart local v27  # "schedGroup":I
    :cond_866
    const/4 v0, 0x2

    .end local v27  # "schedGroup":I
    .restart local v0  # "schedGroup":I
    goto :goto_86a

    .line 1389
    :cond_868
    move/from16 v27, v0

    .line 1396
    :goto_86a
    move/from16 v27, v0

    .end local v0  # "schedGroup":I
    .restart local v27  # "schedGroup":I
    const/4 v0, 0x2

    if-ge v5, v0, :cond_89f

    .line 1401
    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_879

    .line 1402
    const/4 v0, 0x3

    goto :goto_87a

    .line 1403
    :cond_879
    const/4 v0, 0x6

    :goto_87a
    nop

    .line 1404
    .local v0, "bestState":I
    move/from16 v37, v6

    .end local v6  # "curSchedGroup":I
    .local v37, "curSchedGroup":I
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v35, 0x4000000

    and-int v6, v6, v35

    if-eqz v6, :cond_88a

    .line 1405
    move v5, v0

    move-object/from16 v38, v7

    const/4 v7, 0x1

    goto :goto_89e

    .line 1406
    :cond_88a
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    move-object/from16 v38, v7

    const/4 v7, 0x1

    .end local v7  # "client":Lcom/android/server/am/ProcessRecord;
    .local v38, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v6, v7, :cond_89d

    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v35, 0x2000000

    and-int v6, v6, v35

    if-eqz v6, :cond_89d

    .line 1410
    move v5, v0

    goto :goto_89e

    .line 1412
    :cond_89d
    const/4 v5, 0x7

    .line 1415
    .end local v0  # "bestState":I
    :goto_89e
    goto :goto_8bf

    .end local v37  # "curSchedGroup":I
    .end local v38  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v6  # "curSchedGroup":I
    .restart local v7  # "client":Lcom/android/server/am/ProcessRecord;
    :cond_89f
    move/from16 v37, v6

    move-object/from16 v38, v7

    const/4 v7, 0x1

    .end local v6  # "curSchedGroup":I
    .end local v7  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v37  # "curSchedGroup":I
    .restart local v38  # "client":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x2

    if-ne v5, v0, :cond_8b2

    .line 1416
    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8bf

    .line 1419
    const/4 v0, 0x4

    move v5, v0

    .end local v5  # "clientProcState":I
    .local v0, "clientProcState":I
    goto :goto_8bf

    .line 1421
    .end local v0  # "clientProcState":I
    .restart local v5  # "clientProcState":I
    :cond_8b2
    const/16 v0, 0x1000

    const/4 v6, 0x5

    if-gt v5, v6, :cond_8bf

    .line 1423
    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8bf

    .line 1424
    const/4 v0, 0x5

    move v5, v0

    .line 1427
    .end local v37  # "curSchedGroup":I
    :cond_8bf
    :goto_8bf
    move v6, v5

    move/from16 v5, v27

    const/16 v0, 0x9

    goto :goto_8ea

    .end local v27  # "schedGroup":I
    .end local v38  # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "schedGroup":I
    .restart local v7  # "client":Lcom/android/server/am/ProcessRecord;
    :cond_8c5
    move/from16 v27, v0

    move-object/from16 v38, v7

    const/4 v7, 0x1

    .end local v0  # "schedGroup":I
    .end local v7  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v27  # "schedGroup":I
    .restart local v38  # "client":Lcom/android/server/am/ProcessRecord;
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v0, v6

    if-nez v0, :cond_8db

    .line 1428
    const/16 v0, 0x9

    if-ge v5, v0, :cond_8e7

    .line 1430
    const/16 v5, 0x9

    move v6, v5

    move/from16 v5, v27

    goto :goto_8ea

    .line 1434
    :cond_8db
    const/16 v0, 0x9

    const/16 v6, 0x8

    if-ge v5, v6, :cond_8e7

    .line 1436
    const/16 v5, 0x8

    move v6, v5

    move/from16 v5, v27

    goto :goto_8ea

    .line 1441
    :cond_8e7
    move v6, v5

    move/from16 v5, v27

    .end local v27  # "schedGroup":I
    .local v5, "schedGroup":I
    .local v6, "clientProcState":I
    :goto_8ea
    const/4 v7, 0x3

    if-ge v5, v7, :cond_8f9

    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v27, 0x80000

    and-int v0, v0, v27

    if-eqz v0, :cond_8f9

    .line 1443
    const/4 v0, 0x3

    move/from16 v27, v0

    .end local v5  # "schedGroup":I
    .restart local v0  # "schedGroup":I
    goto :goto_8fb

    .line 1446
    .end local v0  # "schedGroup":I
    .restart local v5  # "schedGroup":I
    :cond_8f9
    move/from16 v27, v5

    .end local v5  # "schedGroup":I
    .restart local v27  # "schedGroup":I
    :goto_8fb
    if-nez v31, :cond_902

    .line 1447
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v6, v0, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1450
    :cond_902
    if-le v15, v6, :cond_913

    .line 1451
    move v15, v6

    .line 1452
    invoke-virtual {v10, v15}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1453
    if-nez v30, :cond_910

    .line 1454
    const-string/jumbo v30, "service"

    move-object/from16 v0, v30

    goto :goto_915

    .line 1453
    :cond_910
    move-object/from16 v0, v30

    goto :goto_915

    .line 1450
    :cond_913
    move-object/from16 v0, v30

    .line 1457
    .end local v30  # "adjType":Ljava/lang/String;
    .local v0, "adjType":Ljava/lang/String;
    :goto_915
    const/16 v5, 0x8

    if-ge v15, v5, :cond_925

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v30, 0x20000000

    and-int v5, v5, v30

    if-eqz v5, :cond_925

    .line 1459
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1461
    :cond_925
    if-eqz v0, :cond_97d

    .line 1462
    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1463
    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1465
    iget-object v5, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1466
    iput v6, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1467
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1468
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_942

    if-ne v11, v14, :cond_93f

    goto :goto_942

    :cond_93f
    move-object/from16 v7, v36

    goto :goto_996

    .line 1469
    :cond_942
    :goto_942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", due to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " procState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-static {v15}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1469
    move-object/from16 v7, v36

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_996

    .line 1461
    :cond_97d
    move-object/from16 v7, v36

    goto :goto_996

    .line 1281
    .end local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v17  # "conni":I
    .end local v18  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22  # "i":I
    .end local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v33  # "foregroundActivities":Z
    .end local v34  # "is":I
    .end local v38  # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v2, "i":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10  # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v26, "appUid":I
    .local v30, "adj":I
    :cond_980
    move/from16 v22, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v32, v14

    move/from16 v14, v26

    move-wide/from16 v1, p5

    move-object v9, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move/from16 v3, v30

    .line 1476
    .end local v0  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2  # "i":I
    .end local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6  # "conni":I
    .end local v10  # "is":I
    .end local v26  # "appUid":I
    .end local v30  # "adj":I
    .local v3, "adj":I
    .restart local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v14, "appUid":I
    .restart local v17  # "conni":I
    .restart local v18  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22  # "i":I
    .restart local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v33  # "foregroundActivities":Z
    .restart local v34  # "is":I
    :goto_996
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_9a0

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1479
    :cond_9a0
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 1480
    .local v0, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_9f4

    .line 1481
    if-eqz v0, :cond_9f4

    if-lez v3, :cond_9f4

    .line 1482
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_9f4

    .line 1483
    const/4 v3, 0x0

    .line 1484
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1485
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9c7

    .line 1486
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9c5

    .line 1487
    const/16 v27, 0x4

    goto :goto_9c7

    .line 1489
    :cond_9c5
    const/16 v27, 0x2

    .line 1492
    :cond_9c7
    :goto_9c7
    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1493
    const-string/jumbo v5, "service"

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1494
    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1496
    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1497
    iput v15, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1498
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1499
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_9e0

    if-ne v11, v14, :cond_9f4

    .line 1500
    :cond_9e0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise to service w/activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v0  # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v9  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v31  # "trackedProcState":Z
    :cond_9f4
    :goto_9f4
    add-int/lit8 v0, v22, 0x1

    move v2, v0

    move v1, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v14, v32

    move/from16 v9, v33

    move/from16 v10, v34

    .end local v22  # "i":I
    .local v0, "i":I
    goto/16 :goto_6c5

    .line 1268
    .end local v0  # "i":I
    .end local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v17  # "conni":I
    .end local v18  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v33  # "foregroundActivities":Z
    .end local v34  # "is":I
    .local v1, "adj":I
    .restart local v2  # "i":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6  # "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10  # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v26  # "appUid":I
    :cond_a08
    move/from16 v22, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v32, v14

    move/from16 v14, v26

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    .line 1265
    .end local v1  # "adj":I
    .end local v2  # "i":I
    .end local v5  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6  # "conni":I
    .end local v9  # "foregroundActivities":Z
    .end local v10  # "is":I
    .end local v26  # "appUid":I
    .local v3, "adj":I
    .restart local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .local v14, "appUid":I
    .restart local v17  # "conni":I
    .restart local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v33  # "foregroundActivities":Z
    .restart local v34  # "is":I
    :goto_a1c
    add-int/lit8 v6, v17, -0x1

    move v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move v1, v15

    move-object/from16 v14, v32

    move/from16 v9, v33

    move/from16 v10, v34

    const/4 v5, 0x0

    const/4 v15, 0x1

    .end local v17  # "conni":I
    .restart local v6  # "conni":I
    goto/16 :goto_6a4

    .line 1262
    .end local v4  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15  # "procState":I
    .end local v32  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v33  # "foregroundActivities":Z
    .end local v34  # "is":I
    .local v0, "appUid":I
    .local v1, "procState":I
    .local v2, "adj":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v9  # "foregroundActivities":Z
    .restart local v10  # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_a2e
    move/from16 v17, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v32, v14

    move-wide/from16 v5, p5

    move v14, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    .line 1216
    .end local v0  # "appUid":I
    .end local v3  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v6  # "conni":I
    .end local v9  # "foregroundActivities":Z
    .end local v10  # "is":I
    .local v14, "appUid":I
    .restart local v33  # "foregroundActivities":Z
    .restart local v34  # "is":I
    :goto_a3c
    add-int/lit8 v0, v34, -0x1

    move v6, v1

    move-object v4, v7

    move-object v7, v10

    move/from16 v5, v27

    move-object/from16 v1, v28

    move-object/from16 v15, v29

    move/from16 v9, v33

    const/16 v3, 0x9

    move v10, v0

    move v0, v14

    .end local v34  # "is":I
    .local v0, "is":I
    goto/16 :goto_5d6

    .line 1213
    .end local v14  # "appUid":I
    .end local v27  # "schedGroup":I
    .end local v28  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v29  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v33  # "foregroundActivities":Z
    .local v0, "appUid":I
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    .local v5, "schedGroup":I
    .local v6, "procState":I
    .restart local v9  # "foregroundActivities":Z
    .restart local v10  # "is":I
    .local v15, "backupTarget":Lcom/android/server/am/BackupRecord;
    :cond_a4f
    move v14, v0

    move-object/from16 v28, v1

    move/from16 v27, v5

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v29, v15

    move-object v10, v7

    move-object v7, v4

    move-wide/from16 v4, p5

    .line 1509
    .end local v0  # "appUid":I
    .end local v1  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v5  # "schedGroup":I
    .end local v9  # "foregroundActivities":Z
    .end local v10  # "is":I
    .end local v15  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v14  # "appUid":I
    .restart local v27  # "schedGroup":I
    .restart local v28  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v29  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v33  # "foregroundActivities":Z
    :goto_a5e
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v9, v0

    .line 1510
    .local v9, "provi":I
    :goto_a67
    if-ltz v9, :cond_c8d

    if-gtz v2, :cond_a7f

    if-eqz v27, :cond_a7f

    const/4 v0, 0x2

    if-le v6, v0, :cond_a71

    goto :goto_a7f

    :cond_a71
    const/16 v16, 0x3

    move/from16 v40, v11

    move-object v11, v7

    move-wide/from16 v41, v4

    move/from16 v5, v40

    move v4, v14

    move-wide/from16 v14, v41

    goto/16 :goto_c9b

    .line 1514
    :cond_a7f
    :goto_a7f
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    .line 1515
    .local v15, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v1, v6

    move/from16 v2, v27

    move v6, v0

    .line 1516
    .end local v27  # "schedGroup":I
    .local v1, "procState":I
    .local v2, "schedGroup":I
    .local v3, "adj":I
    .local v6, "i":I
    :goto_a97
    if-ltz v6, :cond_c07

    if-gtz v3, :cond_ab8

    if-eqz v2, :cond_ab8

    const/4 v0, 0x2

    if-le v1, v0, :cond_aa1

    goto :goto_ab8

    :cond_aa1
    move v6, v1

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v30, v13

    const/16 v16, 0x3

    move v13, v2

    move/from16 v40, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v41, v4

    move/from16 v5, v40

    move v4, v14

    move-wide/from16 v14, v41

    goto/16 :goto_c1e

    .line 1520
    :cond_ab8
    :goto_ab8
    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1521
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    move/from16 v17, v9

    .end local v9  # "provi":I
    .local v17, "provi":I
    iget-object v9, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1522
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v9, v10, :cond_adf

    .line 1524
    move/from16 v22, v1

    move/from16 v27, v3

    move/from16 v34, v6

    move-object/from16 v39, v7

    move/from16 v35, v11

    move-object/from16 v18, v12

    move-object/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v11, v16

    const/16 v16, 0x3

    move v13, v2

    move-wide v14, v4

    goto :goto_b18

    .line 1526
    :cond_adf
    move-object/from16 v18, v12

    move-object v12, v0

    .end local v0  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v12, "conn":Lcom/android/server/am/ContentProviderConnection;
    move-object/from16 v0, p0

    move/from16 v22, v1

    .end local v1  # "procState":I
    .local v22, "procState":I
    move-object v1, v9

    move-object/from16 v30, v13

    move v13, v2

    .end local v2  # "schedGroup":I
    .local v13, "schedGroup":I
    move/from16 v2, p2

    move/from16 v27, v3

    .end local v3  # "adj":I
    .local v27, "adj":I
    move-object/from16 v3, p3

    move/from16 v31, v14

    move-object/from16 v32, v15

    move-wide v14, v4

    .end local v14  # "appUid":I
    .end local v15  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v31, "appUid":I
    .local v32, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move/from16 v4, p4

    move/from16 v34, v6

    .end local v6  # "i":I
    .local v34, "i":I
    move-wide/from16 v5, p5

    move-object/from16 v39, v7

    move/from16 v35, v11

    move/from16 v11, v16

    const/16 v16, 0x3

    .end local v11  # "logUid":I
    .local v35, "logUid":I
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1528
    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v22

    move/from16 v4, v27

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_b27

    .line 1529
    nop

    .line 1519
    .end local v9  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v12  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v13  # "schedGroup":I
    .end local v22  # "procState":I
    .end local v27  # "adj":I
    .end local v31  # "appUid":I
    .end local v32  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v34  # "i":I
    .end local v35  # "logUid":I
    .restart local v1  # "procState":I
    .restart local v2  # "schedGroup":I
    .restart local v3  # "adj":I
    .restart local v6  # "i":I
    .restart local v11  # "logUid":I
    .restart local v14  # "appUid":I
    .restart local v15  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_b18
    move v2, v13

    move/from16 v1, v22

    move/from16 v3, v27

    move/from16 v4, v31

    move-object/from16 v7, v32

    move/from16 v5, v35

    move-object/from16 v11, v39

    .end local v1  # "procState":I
    .end local v2  # "schedGroup":I
    .end local v3  # "adj":I
    .end local v6  # "i":I
    .end local v11  # "logUid":I
    .end local v14  # "appUid":I
    .end local v15  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13  # "schedGroup":I
    .restart local v22  # "procState":I
    .restart local v27  # "adj":I
    .restart local v31  # "appUid":I
    .restart local v32  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v34  # "i":I
    .restart local v35  # "logUid":I
    goto/16 :goto_bf3

    .line 1532
    .restart local v9  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v12  # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_b27
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    .line 1533
    .local v2, "clientAdj":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v0

    .line 1535
    .local v0, "clientProcState":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_b35

    .line 1538
    const/16 v0, 0x14

    .line 1540
    :cond_b35
    const/4 v1, 0x0

    .line 1541
    .local v1, "adjType":Ljava/lang/String;
    move/from16 v3, v27

    .end local v27  # "adj":I
    .restart local v3  # "adj":I
    if-le v3, v2, :cond_b61

    .line 1542
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_b4b

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v4

    if-nez v4, :cond_b4b

    const/16 v4, 0xc8

    if-le v2, v4, :cond_b4d

    .line 1544
    const-string v1, "cch-ui-provider"

    goto :goto_b59

    .line 1542
    :cond_b4b
    const/16 v4, 0xc8

    .line 1546
    :cond_b4d
    if-lez v2, :cond_b51

    .line 1547
    move v5, v2

    goto :goto_b52

    :cond_b51
    const/4 v5, 0x0

    :goto_b52
    move v3, v5

    .line 1548
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1549
    const-string/jumbo v1, "provider"

    .line 1551
    :goto_b59
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    iget-boolean v6, v9, Lcom/android/server/am/ProcessRecord;->cached:Z

    and-int/2addr v5, v6

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    goto :goto_b63

    .line 1541
    :cond_b61
    const/16 v4, 0xc8

    .line 1554
    :goto_b63
    const/4 v5, 0x5

    if-gt v0, v5, :cond_b72

    .line 1555
    if-nez v1, :cond_b6b

    .line 1556
    const-string/jumbo v1, "provider"

    .line 1558
    :cond_b6b
    const/4 v5, 0x2

    if-ne v0, v5, :cond_b70

    .line 1559
    const/4 v0, 0x4

    goto :goto_b73

    .line 1561
    :cond_b70
    const/4 v0, 0x6

    goto :goto_b73

    .line 1554
    :cond_b72
    const/4 v5, 0x2

    .line 1565
    :goto_b73
    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v0, v6, v14, v15}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 1566
    move/from16 v6, v22

    .end local v22  # "procState":I
    .local v6, "procState":I
    if-le v6, v0, :cond_b80

    .line 1567
    move v6, v0

    .line 1568
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1570
    :cond_b80
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v7

    if-le v7, v13, :cond_b88

    .line 1571
    const/4 v7, 0x2

    move v13, v7

    .line 1573
    :cond_b88
    if-eqz v1, :cond_be7

    .line 1574
    iput-object v1, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1575
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1577
    iput-object v9, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1578
    iput v0, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1579
    move-object/from16 v7, v32

    .end local v32  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v4, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1580
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_ba6

    move/from16 v4, v31

    move/from16 v5, v35

    .end local v31  # "appUid":I
    .end local v35  # "logUid":I
    .local v4, "appUid":I
    .local v5, "logUid":I
    if-ne v5, v4, :cond_ba3

    goto :goto_baa

    :cond_ba3
    move-object/from16 v11, v39

    goto :goto_bf1

    .end local v4  # "appUid":I
    .end local v5  # "logUid":I
    .restart local v31  # "appUid":I
    .restart local v35  # "logUid":I
    :cond_ba6
    move/from16 v4, v31

    move/from16 v5, v35

    .line 1581
    .end local v31  # "appUid":I
    .end local v35  # "logUid":I
    .restart local v4  # "appUid":I
    .restart local v5  # "logUid":I
    :goto_baa
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    move-object/from16 v0, v30

    .end local v0  # "clientProcState":I
    .local v22, "clientProcState":I
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    move-object/from16 v11, v39

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf1

    .line 1573
    .end local v4  # "appUid":I
    .end local v5  # "logUid":I
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22  # "clientProcState":I
    .restart local v0  # "clientProcState":I
    .restart local v31  # "appUid":I
    .restart local v32  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v35  # "logUid":I
    :cond_be7
    move/from16 v22, v0

    move/from16 v4, v31

    move-object/from16 v7, v32

    move/from16 v5, v35

    move-object/from16 v11, v39

    .line 1519
    .end local v0  # "clientProcState":I
    .end local v1  # "adjType":Ljava/lang/String;
    .end local v2  # "clientAdj":I
    .end local v9  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v12  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v31  # "appUid":I
    .end local v32  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v35  # "logUid":I
    .restart local v4  # "appUid":I
    .restart local v5  # "logUid":I
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_bf1
    move v1, v6

    move v2, v13

    .end local v6  # "procState":I
    .end local v13  # "schedGroup":I
    .local v1, "procState":I
    .local v2, "schedGroup":I
    :goto_bf3
    add-int/lit8 v6, v34, -0x1

    move/from16 v9, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v30

    const/16 v16, 0x1

    move-wide/from16 v40, v14

    move v14, v4

    move-object v15, v7

    move-object v7, v11

    move v11, v5

    move-wide/from16 v4, v40

    .end local v34  # "i":I
    .local v6, "i":I
    goto/16 :goto_a97

    .line 1516
    .end local v4  # "appUid":I
    .end local v5  # "logUid":I
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17  # "provi":I
    .local v9, "provi":I
    .restart local v11  # "logUid":I
    .restart local v14  # "appUid":I
    .restart local v15  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_c07
    move/from16 v34, v6

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v30, v13

    const/16 v16, 0x3

    move v6, v1

    move v13, v2

    move/from16 v40, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v41, v4

    move/from16 v5, v40

    move v4, v14

    move-wide/from16 v14, v41

    .line 1591
    .end local v1  # "procState":I
    .end local v2  # "schedGroup":I
    .end local v9  # "provi":I
    .end local v11  # "logUid":I
    .end local v14  # "appUid":I
    .end local v15  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4  # "appUid":I
    .restart local v5  # "logUid":I
    .local v6, "procState":I
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13  # "schedGroup":I
    .restart local v17  # "provi":I
    :goto_c1e
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_c7b

    .line 1592
    if-lez v3, :cond_c51

    .line 1593
    const/4 v3, 0x0

    .line 1594
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1595
    const/4 v2, 0x2

    .line 1596
    .end local v13  # "schedGroup":I
    .restart local v2  # "schedGroup":I
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1597
    const-string v0, "ext-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1598
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1599
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_c3c

    if-ne v5, v4, :cond_c50

    .line 1600
    :cond_c3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to external provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_c50
    move v13, v2

    .end local v2  # "schedGroup":I
    .restart local v13  # "schedGroup":I
    :cond_c51
    const/4 v0, 0x7

    if-le v6, v0, :cond_c77

    .line 1605
    const/4 v0, 0x7

    .line 1606
    .end local v6  # "procState":I
    .local v0, "procState":I
    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1607
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_c5e

    if-ne v5, v4, :cond_c72

    .line 1608
    :cond_c5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to external provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_c72
    move v6, v0

    move v2, v3

    move/from16 v27, v13

    goto :goto_c7e

    .line 1604
    .end local v0  # "procState":I
    .restart local v6  # "procState":I
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_c77
    move v2, v3

    move/from16 v27, v13

    goto :goto_c7e

    .line 1591
    :cond_c7b
    move v2, v3

    move/from16 v27, v13

    .line 1513
    .end local v3  # "adj":I
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v13  # "schedGroup":I
    .local v2, "adj":I
    .local v27, "schedGroup":I
    :goto_c7e
    add-int/lit8 v9, v17, -0x1

    move-object v7, v11

    move-object/from16 v12, v18

    move-object/from16 v13, v30

    move v11, v5

    move-wide/from16 v40, v14

    move v14, v4

    move-wide/from16 v4, v40

    .end local v17  # "provi":I
    .restart local v9  # "provi":I
    goto/16 :goto_a67

    .line 1510
    .end local v4  # "appUid":I
    .end local v5  # "logUid":I
    .restart local v11  # "logUid":I
    .restart local v14  # "appUid":I
    :cond_c8d
    move/from16 v17, v9

    const/16 v16, 0x3

    move/from16 v40, v11

    move-object v11, v7

    move-wide/from16 v41, v4

    move/from16 v5, v40

    move v4, v14

    move-wide/from16 v14, v41

    .line 1615
    .end local v9  # "provi":I
    .end local v11  # "logUid":I
    .end local v14  # "appUid":I
    .restart local v4  # "appUid":I
    .restart local v5  # "logUid":I
    :goto_c9b
    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-lez v0, :cond_cfd

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v0, v12

    cmp-long v0, v0, v14

    if-lez v0, :cond_cfd

    .line 1617
    const/16 v0, 0x2bc

    if-le v2, v0, :cond_cd8

    .line 1618
    const/16 v2, 0x2bc

    .line 1619
    const/16 v27, 0x0

    .line 1620
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1621
    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1622
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_cc4

    if-ne v5, v4, :cond_cd8

    .line 1623
    :cond_cc4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_cd8
    const/16 v0, 0x10

    if-le v6, v0, :cond_cfd

    .line 1628
    const/16 v6, 0x10

    .line 1629
    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1630
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_ce9

    if-ne v5, v4, :cond_cfd

    .line 1631
    :cond_ce9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_cfd
    const/16 v0, 0x14

    if-lt v6, v0, :cond_d18

    .line 1638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_d0e

    .line 1640
    const/16 v6, 0x12

    .line 1641
    const-string v0, "cch-client-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_d18

    .line 1642
    :cond_d0e
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_d18

    .line 1645
    const/16 v6, 0x11

    .line 1646
    const-string v0, "cch-as-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1650
    :cond_d18
    :goto_d18
    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_d64

    .line 1651
    if-eqz p4, :cond_d5c

    .line 1652
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_d28

    const/4 v0, 0x1

    goto :goto_d29

    :cond_d28
    const/4 v0, 0x0

    :goto_d29
    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 1653
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1655
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v0, :cond_d58

    .line 1660
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v0, :cond_d50

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1661
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v0, v0, v11

    if-ltz v0, :cond_d4e

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 1663
    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v0, 0x0

    goto :goto_d5d

    .line 1661
    :cond_d4e
    const/4 v0, 0x1

    goto :goto_d51

    .line 1660
    :cond_d50
    const/4 v0, 0x1

    .line 1666
    :goto_d51
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v1, v0

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v0, 0x0

    goto :goto_d5d

    .line 1670
    :cond_d58
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_d5d

    .line 1651
    :cond_d5c
    const/4 v0, 0x0

    .line 1673
    :goto_d5d
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v1, :cond_d65

    .line 1674
    const/16 v2, 0x320

    goto :goto_d65

    .line 1650
    :cond_d64
    const/4 v0, 0x0

    .line 1678
    :cond_d65
    :goto_d65
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1682
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v2, v1, :cond_d7c

    .line 1683
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1684
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_d79

    .line 1685
    const/16 v27, 0x2

    move/from16 v1, v27

    goto :goto_d7e

    .line 1684
    :cond_d79
    move/from16 v1, v27

    goto :goto_d7e

    .line 1682
    :cond_d7c
    move/from16 v1, v27

    .line 1691
    .end local v27  # "schedGroup":I
    .local v1, "schedGroup":I
    :goto_d7e
    const/4 v3, 0x6

    if-lt v6, v3, :cond_d8c

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_d8d

    .line 1693
    if-le v1, v7, :cond_d8d

    .line 1694
    const/4 v1, 0x1

    goto :goto_d8d

    .line 1691
    :cond_d8c
    const/4 v7, 0x1

    .line 1703
    :cond_d8d
    :goto_d8d
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v3

    iput v3, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1704
    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1705
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1706
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1707
    move/from16 v3, v33

    .end local v33  # "foregroundActivities":Z
    .local v3, "foregroundActivities":Z
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1708
    iget v9, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v9, v10, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1711
    iget v9, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v11, v25

    .end local v25  # "prevAppAdj":I
    .local v11, "prevAppAdj":I
    if-lt v9, v11, :cond_db4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v9

    move/from16 v12, v24

    .end local v24  # "prevProcState":I
    .local v12, "prevProcState":I
    if-ge v9, v12, :cond_db7

    goto :goto_db6

    .end local v12  # "prevProcState":I
    .restart local v24  # "prevProcState":I
    :cond_db4
    move/from16 v12, v24

    .end local v24  # "prevProcState":I
    .restart local v12  # "prevProcState":I
    :goto_db6
    move v0, v7

    :cond_db7
    return v0
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowUptime"  # J

    .line 2101
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d

    .line 2102
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 2103
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    .line 2105
    :cond_d
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .registers 13
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2053
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_38

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking proc ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] state changes: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2054
    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_3f

    .line 2059
    return-void

    .line 2065
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-le v0, v1, :cond_84

    .line 2066
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_50

    goto :goto_84

    .line 2069
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v0, v1, :cond_76

    .line 2070
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    .line 2071
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2072
    const/4 v0, 0x0

    .local v0, "isInteraction":Z
    goto :goto_88

    .line 2074
    .end local v0  # "isInteraction":Z
    :cond_66
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-lez v0, :cond_74

    move v4, v5

    :cond_74
    move v0, v4

    .restart local v0  # "isInteraction":Z
    goto :goto_88

    .line 2078
    .end local v0  # "isInteraction":Z
    :cond_76
    nop

    .line 2079
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_7f

    move v4, v5

    :cond_7f
    move v0, v4

    .line 2080
    .restart local v0  # "isInteraction":Z
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_88

    .line 2067
    .end local v0  # "isInteraction":Z
    :cond_84
    :goto_84
    const/4 v0, 0x1

    .line 2068
    .restart local v0  # "isInteraction":Z
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2082
    :goto_88
    if-eqz v0, :cond_b8

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_9c

    .line 2083
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_b8

    .line 2085
    :cond_9c
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2086
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 2087
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_b8

    .line 2088
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a6
    array-length v5, v1

    if-ge v4, v5, :cond_b8

    .line 2089
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v6, v1, v4

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v8, 0x6

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2088
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 2094
    .end local v1  # "packages":[Ljava/lang/String;
    .end local v4  # "i":I
    :cond_b8
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    .line 2095
    if-nez v0, :cond_bf

    .line 2096
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2098
    :cond_bf
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "procState"  # I
    .param p4, "adj"  # I
    .param p5, "cycleReEval"  # Z

    .line 1727
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1d

    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 1734
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1d

    .line 1735
    if-eqz p5, :cond_1c

    .line 1738
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1d

    .line 1739
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1d

    .line 1740
    return v0

    .line 1745
    :cond_1c
    return v0

    .line 1749
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .registers 16
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"  # I
    .param p3, "TOP_APP"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"  # Z
    .param p5, "now"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 264
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_6

    .line 265
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_6
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method dumpAppCompactorSettings(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2202
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppCompactor;->dump(Ljava/io/PrintWriter;)V

    .line 2203
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2194
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

    .line 2193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2176
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2177
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2178
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2180
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2181
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2184
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2188
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

    .line 2189
    return-void
.end method

.method idleUidsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2113
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 2114
    .local v0, "N":I
    if-gtz v0, :cond_9

    .line 2115
    return-void

    .line 2117
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2118
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 2119
    .local v3, "maxBgTime":J
    const-wide/16 v5, 0x0

    .line 2120
    .local v5, "nextTime":J
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1c

    .line 2121
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 2123
    :cond_1c
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1e
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_54

    .line 2124
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 2125
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 2126
    .local v11, "bgTime":J
    cmp-long v13, v11, v8

    if-lez v13, :cond_51

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_51

    .line 2127
    cmp-long v13, v11, v3

    if-gtz v13, :cond_48

    .line 2128
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2129
    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    .line 2130
    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 2131
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_51

    .line 2133
    :cond_48
    cmp-long v8, v5, v8

    if-eqz v8, :cond_50

    cmp-long v8, v5, v11

    if-lez v8, :cond_51

    .line 2134
    :cond_50
    move-wide v5, v11

    .line 2123
    .end local v10  # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11  # "bgTime":J
    :cond_51
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    .line 2139
    .end local v7  # "i":I
    :cond_54
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_5b

    .line 2140
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2142
    :cond_5b
    cmp-long v7, v5, v8

    if-lez v7, :cond_75

    .line 2143
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2144
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2147
    :cond_75
    return-void
.end method

.method initSettings()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->init()V

    .line 226
    return-void
.end method

.method public synthetic lambda$new$0$OomAdjuster(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 203
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 204
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 205
    .local v2, "pid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 207
    .local v3, "group":I
    :try_start_c
    iget-boolean v4, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    if-eqz v4, :cond_1e

    .line 208
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 209
    .local v4, "uid":I
    iget-boolean v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    invoke-static {v4, v2, v3, v5}, Landroid/os/Process;->setCgroupProcsProcessGroup(IIIZ)V

    .line 210
    .end local v4  # "uid":I
    goto :goto_21

    .line 211
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_27
    .catchall {:try_start_c .. :try_end_21} :catchall_25

    .line 218
    :cond_21
    :goto_21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 219
    goto :goto_4b

    .line 218
    :catchall_25
    move-exception v4

    goto :goto_4d

    .line 213
    :catch_27
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    :try_start_28
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v5, :cond_21

    .line 215
    const-string v5, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed setting process group of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_25

    goto :goto_21

    .line 220
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_4b
    const/4 v0, 0x1

    return v0

    .line 218
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2046
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2047
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2048
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2049
    return-void

    .line 2048
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "msg"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1755
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_16

    .line 1757
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1759
    :cond_16
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .registers 7
    .param p1, "appId"  # I
    .param p2, "onWhitelist"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2151
    const/4 v0, 0x0

    .line 2152
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 2153
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2154
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_20

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_20

    .line 2155
    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2156
    const/4 v0, 0x1

    .line 2152
    .end local v2  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2159
    .end local v1  # "i":I
    :cond_23
    if-eqz v0, :cond_2b

    .line 2160
    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2162
    :cond_2b
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "onWhitelist"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2166
    const/4 v0, 0x0

    .line 2167
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 2168
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_15

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_15

    .line 2169
    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2170
    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2172
    :cond_15
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .registers 63
    .param p1, "oomAdjReason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 275
    move-object/from16 v8, p0

    const-wide/16 v9, 0x40

    move-object/from16 v11, p1

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 276
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 277
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 278
    .local v12, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 279
    .local v13, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 280
    .local v5, "nowElapsed":J
    const-wide/32 v15, 0x1b7740

    sub-long v17, v13, v15

    .line 281
    .local v17, "oldTime":J
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v7

    .line 284
    .local v7, "N":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_31
    if-ltz v0, :cond_3f

    .line 285
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 288
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 284
    .end local v1  # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 291
    .end local v0  # "i":I
    :cond_3f
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_4c

    .line 292
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    .line 295
    :cond_4c
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v4

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 296
    const/4 v3, 0x0

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 297
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 299
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 300
    .local v2, "emptyProcessLimit":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v1, v0, v2

    .line 307
    .local v1, "cachedProcessLimit":I
    const/16 v19, 0xa

    .line 310
    .local v19, "numSlots":I
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v0, v7, v0

    iget v9, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v0, v9

    .line 311
    .local v0, "numEmptyProcs":I
    if-le v0, v1, :cond_6e

    .line 318
    move v0, v1

    move v9, v0

    goto :goto_6f

    .line 311
    :cond_6e
    move v9, v0

    .line 320
    .end local v0  # "numEmptyProcs":I
    .local v9, "numEmptyProcs":I
    :goto_6f
    add-int/lit8 v0, v9, 0xa

    sub-int/2addr v0, v4

    const/16 v10, 0xa

    div-int/2addr v0, v10

    .line 321
    .local v0, "emptyFactor":I
    if-ge v0, v4, :cond_78

    const/4 v0, 0x1

    .line 322
    :cond_78
    iget v15, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    if-lez v15, :cond_7f

    add-int/2addr v15, v10

    sub-int/2addr v15, v4

    goto :goto_80

    :cond_7f
    move v15, v4

    :goto_80
    div-int/2addr v15, v10

    .line 324
    .local v15, "cachedFactor":I
    if-ge v15, v4, :cond_84

    const/4 v15, 0x1

    .line 325
    :cond_84
    const/16 v16, -0x1

    .line 326
    .local v16, "stepCached":I
    const/16 v22, -0x1

    .line 327
    .local v22, "stepEmpty":I
    const/16 v23, 0x0

    .line 328
    .local v23, "numCached":I
    const/16 v24, 0x0

    .line 329
    .local v24, "numCachedExtraGroup":I
    const/16 v25, 0x0

    .line 330
    .local v25, "numEmpty":I
    const/16 v26, 0x0

    .line 331
    .local v26, "numTrimming":I
    const/16 v27, 0x0

    .line 332
    .local v27, "lastCachedGroup":I
    const/16 v28, 0x0

    .line 333
    .local v28, "lastCachedGroupImportance":I
    const/16 v29, 0x0

    .line 335
    .local v29, "lastCachedGroupUid":I
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 336
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 340
    const/16 v30, 0x384

    .line 341
    .local v30, "curCachedAdj":I
    add-int/lit8 v31, v30, 0xa

    .line 342
    .local v31, "nextCachedAdj":I
    const/16 v32, 0x0

    .line 343
    .local v32, "curCachedImpAdj":I
    const/16 v33, 0x389

    .line 344
    .local v33, "curEmptyAdj":I
    add-int/lit8 v34, v33, 0xa

    .line 345
    .local v34, "nextEmptyAdj":I
    const/16 v35, 0x0

    .line 346
    .local v35, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v36, 0x0

    .line 347
    .local v36, "serviceLastActivity":J
    const/16 v38, 0x0

    .line 349
    .local v38, "numBServices":I
    const/16 v39, 0x0

    .line 352
    .local v39, "retryCycles":Z
    add-int/lit8 v40, v7, -0x1

    move/from16 v10, v40

    .local v10, "i":I
    :goto_b0
    move/from16 v40, v2

    .end local v2  # "emptyProcessLimit":I
    .local v40, "emptyProcessLimit":I
    const/16 v4, 0x14

    if-ltz v10, :cond_d0

    .line 353
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 354
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 355
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 356
    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 352
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v40

    const/4 v4, 0x1

    goto :goto_b0

    :cond_d0
    const/16 v2, 0x3e9

    .line 358
    .end local v10  # "i":I
    add-int/lit8 v10, v7, -0x1

    move/from16 v47, v27

    move/from16 v49, v28

    move/from16 v48, v29

    move/from16 v50, v30

    move/from16 v51, v31

    move/from16 v45, v33

    move/from16 v46, v34

    move-object/from16 v44, v35

    move/from16 v27, v16

    move/from16 v16, v7

    move/from16 v7, v38

    .end local v28  # "lastCachedGroupImportance":I
    .end local v29  # "lastCachedGroupUid":I
    .end local v30  # "curCachedAdj":I
    .end local v31  # "nextCachedAdj":I
    .end local v33  # "curEmptyAdj":I
    .end local v34  # "nextEmptyAdj":I
    .end local v35  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v38  # "numBServices":I
    .local v7, "numBServices":I
    .restart local v10  # "i":I
    .local v16, "N":I
    .local v27, "stepCached":I
    .local v44, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v45, "curEmptyAdj":I
    .local v46, "nextEmptyAdj":I
    .local v47, "lastCachedGroup":I
    .local v48, "lastCachedGroupUid":I
    .local v49, "lastCachedGroupImportance":I
    .local v50, "curCachedAdj":I
    .local v51, "nextCachedAdj":I
    :goto_ea
    move-wide/from16 v28, v5

    .end local v5  # "nowElapsed":J
    .local v28, "nowElapsed":J
    const-string v3, "app.processName = "

    const-string v4, " app.pid = "

    move/from16 v31, v9

    .end local v9  # "numEmptyProcs":I
    .local v31, "numEmptyProcs":I
    const-string v9, "OomAdjuster"

    if-ltz v10, :cond_38c

    .line 359
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 360
    .restart local v2  # "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v5, v8, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v5, :cond_1c8

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v5, :cond_1c8

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1c8

    .line 362
    add-int/lit8 v7, v7, 0x1

    .line 363
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "s":I
    :goto_118
    if-ltz v5, :cond_1be

    .line 364
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 365
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    sget-boolean v52, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v52, :cond_171

    move/from16 v52, v0

    .end local v0  # "emptyFactor":I
    .local v52, "emptyFactor":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v53, v1

    .end local v1  # "cachedProcessLimit":I
    .local v53, "cachedProcessLimit":I
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sr.lastActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v54, v10

    .end local v10  # "i":I
    .local v54, "i":I
    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    .end local v52  # "emptyFactor":I
    .end local v53  # "cachedProcessLimit":I
    .end local v54  # "i":I
    .restart local v0  # "emptyFactor":I
    .restart local v1  # "cachedProcessLimit":I
    .restart local v10  # "i":I
    :cond_171
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .line 369
    .end local v0  # "emptyFactor":I
    .end local v1  # "cachedProcessLimit":I
    .end local v10  # "i":I
    .restart local v52  # "emptyFactor":I
    .restart local v53  # "cachedProcessLimit":I
    .restart local v54  # "i":I
    :goto_177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v0, v10

    iget v10, v8, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v10, v10

    cmp-long v0, v0, v10

    if-gez v0, :cond_194

    .line 371
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_191

    .line 372
    const-string v0, "Not aged enough!!!"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    goto :goto_1b1

    .line 371
    :cond_191
    const-wide/16 v10, 0x0

    goto :goto_1b1

    .line 376
    :cond_194
    const-wide/16 v10, 0x0

    cmp-long v0, v36, v10

    if-nez v0, :cond_1a3

    .line 377
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 378
    .end local v36  # "serviceLastActivity":J
    .local v0, "serviceLastActivity":J
    move-object/from16 v33, v2

    move-wide/from16 v36, v0

    move-object/from16 v44, v33

    .end local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v33, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_1b1

    .line 379
    .end local v0  # "serviceLastActivity":J
    .end local v33  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v36  # "serviceLastActivity":J
    .restart local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_1a3
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v36

    if-gez v0, :cond_1b1

    .line 380
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 381
    .end local v36  # "serviceLastActivity":J
    .restart local v0  # "serviceLastActivity":J
    move-object/from16 v33, v2

    move-wide/from16 v36, v0

    move-object/from16 v44, v33

    .line 363
    .end local v0  # "serviceLastActivity":J
    .end local v6  # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v36  # "serviceLastActivity":J
    :cond_1b1
    :goto_1b1
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v11, p1

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v10, v54

    const/4 v6, 0x1

    goto/16 :goto_118

    .end local v52  # "emptyFactor":I
    .end local v53  # "cachedProcessLimit":I
    .end local v54  # "i":I
    .local v0, "emptyFactor":I
    .restart local v1  # "cachedProcessLimit":I
    .restart local v10  # "i":I
    :cond_1be
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .end local v0  # "emptyFactor":I
    .end local v1  # "cachedProcessLimit":I
    .end local v10  # "i":I
    .restart local v52  # "emptyFactor":I
    .restart local v53  # "cachedProcessLimit":I
    .restart local v54  # "i":I
    move v11, v7

    move-object/from16 v10, v44

    goto :goto_1d1

    .line 360
    .end local v5  # "s":I
    .end local v52  # "emptyFactor":I
    .end local v53  # "cachedProcessLimit":I
    .end local v54  # "i":I
    .restart local v0  # "emptyFactor":I
    .restart local v1  # "cachedProcessLimit":I
    .restart local v10  # "i":I
    :cond_1c8
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .line 385
    .end local v0  # "emptyFactor":I
    .end local v1  # "cachedProcessLimit":I
    .end local v10  # "i":I
    .restart local v52  # "emptyFactor":I
    .restart local v53  # "cachedProcessLimit":I
    .restart local v54  # "i":I
    move v11, v7

    move-object/from16 v10, v44

    .end local v7  # "numBServices":I
    .end local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v10, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v11, "numBServices":I
    :goto_1d1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1f5

    if-eqz v10, :cond_1f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1f5
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_343

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_343

    .line 390
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 391
    const/16 v4, 0x3e9

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v9, v52

    .end local v52  # "emptyFactor":I
    .local v9, "emptyFactor":I
    move-object/from16 v0, p0

    move/from16 v6, v53

    .end local v53  # "cachedProcessLimit":I
    .local v6, "cachedProcessLimit":I
    move-object v1, v2

    move-object/from16 v56, v2

    move/from16 v55, v40

    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v40  # "emptyProcessLimit":I
    .local v55, "emptyProcessLimit":I
    .local v56, "app":Lcom/android/server/am/ProcessRecord;
    move v2, v4

    move v4, v3

    move-object v3, v12

    move/from16 v30, v4

    move v4, v5

    move/from16 v57, v6

    move-wide/from16 v33, v28

    .end local v6  # "cachedProcessLimit":I
    .end local v28  # "nowElapsed":J
    .local v33, "nowElapsed":J
    .local v57, "cachedProcessLimit":I
    move-wide v5, v13

    move-object/from16 v28, v10

    move/from16 v10, v16

    .end local v16  # "N":I
    .local v10, "N":I
    .local v28, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 394
    move-object/from16 v0, v56

    .end local v56  # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v39, v1

    .line 398
    .end local v39  # "retryCycles":Z
    .local v1, "retryCycles":Z
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x3e9

    if-lt v2, v5, :cond_330

    .line 399
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    packed-switch v2, :pswitch_data_8aa

    .line 447
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11  # "numBServices":I
    .end local v47  # "lastCachedGroup":I
    .end local v48  # "lastCachedGroupUid":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .local v3, "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .local v6, "lastCachedGroupUid":I
    .local v7, "lastCachedGroupImportance":I
    .local v16, "lastCachedGroup":I
    .local v29, "numBServices":I
    move/from16 v5, v45

    move/from16 v2, v46

    .end local v45  # "curEmptyAdj":I
    .end local v46  # "nextEmptyAdj":I
    .local v2, "nextEmptyAdj":I
    .local v5, "curEmptyAdj":I
    if-eq v5, v2, :cond_314

    .line 448
    add-int/lit8 v11, v22, 0x1

    .line 449
    .end local v22  # "stepEmpty":I
    .local v11, "stepEmpty":I
    if-lt v11, v9, :cond_312

    .line 450
    const/16 v22, 0x0

    .line 451
    .end local v11  # "stepEmpty":I
    .restart local v22  # "stepEmpty":I
    move/from16 v45, v2

    .line 452
    .end local v5  # "curEmptyAdj":I
    .restart local v45  # "curEmptyAdj":I
    add-int/lit8 v2, v2, 0xa

    .line 453
    const/16 v5, 0x3e7

    if-le v2, v5, :cond_30f

    .line 454
    const/16 v46, 0x3e7

    move/from16 v5, v45

    move/from16 v2, v46

    .end local v2  # "nextEmptyAdj":I
    .restart local v46  # "nextEmptyAdj":I
    goto/16 :goto_314

    .line 404
    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v16  # "lastCachedGroup":I
    .end local v29  # "numBServices":I
    .local v11, "numBServices":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v48  # "lastCachedGroupUid":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :pswitch_25e  #0x11, 0x12, 0x13
    const/4 v2, 0x0

    .line 405
    .local v2, "inGroup":Z
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_2c5

    .line 406
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v6, v48

    .end local v48  # "lastCachedGroupUid":I
    .restart local v6  # "lastCachedGroupUid":I
    if-ne v6, v3, :cond_2b0

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v47

    .end local v47  # "lastCachedGroup":I
    .local v4, "lastCachedGroup":I
    if-ne v4, v3, :cond_2a3

    .line 410
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v7, v49

    .end local v49  # "lastCachedGroupImportance":I
    .restart local v7  # "lastCachedGroupImportance":I
    if-le v3, v7, :cond_293

    .line 411
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 412
    .end local v7  # "lastCachedGroupImportance":I
    .local v3, "lastCachedGroupImportance":I
    move/from16 v16, v4

    move/from16 v7, v50

    move/from16 v4, v51

    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .local v4, "nextCachedAdj":I
    .local v7, "curCachedAdj":I
    .restart local v16  # "lastCachedGroup":I
    if-ge v7, v4, :cond_28b

    move/from16 v29, v11

    const/16 v11, 0x3e7

    .end local v11  # "numBServices":I
    .restart local v29  # "numBServices":I
    if-ge v7, v11, :cond_28f

    .line 414
    add-int/lit8 v32, v32, 0x1

    move/from16 v49, v3

    move v3, v7

    goto :goto_29f

    .line 412
    .end local v29  # "numBServices":I
    .restart local v11  # "numBServices":I
    :cond_28b
    move/from16 v29, v11

    const/16 v11, 0x3e7

    .line 417
    .end local v11  # "numBServices":I
    .restart local v29  # "numBServices":I
    :cond_28f
    move/from16 v49, v3

    move v3, v7

    goto :goto_29f

    .line 410
    .end local v3  # "lastCachedGroupImportance":I
    .end local v16  # "lastCachedGroup":I
    .end local v29  # "numBServices":I
    .local v4, "lastCachedGroup":I
    .local v7, "lastCachedGroupImportance":I
    .restart local v11  # "numBServices":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :cond_293
    move/from16 v16, v4

    move/from16 v29, v11

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11  # "numBServices":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .local v3, "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .restart local v16  # "lastCachedGroup":I
    .restart local v29  # "numBServices":I
    move/from16 v49, v7

    .line 417
    .end local v7  # "lastCachedGroupImportance":I
    .restart local v49  # "lastCachedGroupImportance":I
    :goto_29f
    const/4 v2, 0x1

    move/from16 v7, v49

    goto :goto_2d3

    .line 406
    .end local v3  # "curCachedAdj":I
    .end local v16  # "lastCachedGroup":I
    .end local v29  # "numBServices":I
    .local v4, "lastCachedGroup":I
    .restart local v11  # "numBServices":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :cond_2a3
    move/from16 v16, v4

    move/from16 v29, v11

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11  # "numBServices":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .restart local v3  # "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .restart local v7  # "lastCachedGroupImportance":I
    .restart local v16  # "lastCachedGroup":I
    .restart local v29  # "numBServices":I
    goto :goto_2bc

    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v16  # "lastCachedGroup":I
    .end local v29  # "numBServices":I
    .restart local v11  # "numBServices":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :cond_2b0
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .line 419
    .end local v11  # "numBServices":I
    .end local v47  # "lastCachedGroup":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .restart local v3  # "curCachedAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v7  # "lastCachedGroupImportance":I
    .restart local v16  # "lastCachedGroup":I
    .restart local v29  # "numBServices":I
    :goto_2bc
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 420
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 421
    .end local v16  # "lastCachedGroup":I
    .local v5, "lastCachedGroup":I
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v16, v5

    goto :goto_2d3

    .line 405
    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "lastCachedGroup":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v29  # "numBServices":I
    .restart local v11  # "numBServices":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v48  # "lastCachedGroupUid":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :cond_2c5
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .line 424
    .end local v11  # "numBServices":I
    .end local v47  # "lastCachedGroup":I
    .end local v48  # "lastCachedGroupUid":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .restart local v3  # "curCachedAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .restart local v7  # "lastCachedGroupImportance":I
    .restart local v16  # "lastCachedGroup":I
    .restart local v29  # "numBServices":I
    :goto_2d3
    if-nez v2, :cond_2f2

    if-eq v3, v4, :cond_2f2

    .line 425
    add-int/lit8 v5, v27, 0x1

    .line 426
    .end local v27  # "stepCached":I
    .local v5, "stepCached":I
    const/16 v32, 0x0

    .line 427
    if-lt v5, v15, :cond_2f0

    .line 428
    const/16 v27, 0x0

    .line 429
    .end local v5  # "stepCached":I
    .restart local v27  # "stepCached":I
    move/from16 v50, v4

    .line 430
    .end local v3  # "curCachedAdj":I
    .restart local v50  # "curCachedAdj":I
    add-int/lit8 v3, v4, 0xa

    .line 431
    .end local v4  # "nextCachedAdj":I
    .local v3, "nextCachedAdj":I
    if-le v3, v11, :cond_2ec

    .line 432
    const/16 v51, 0x3e7

    move/from16 v3, v50

    move/from16 v4, v51

    .end local v3  # "nextCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    goto :goto_2f2

    .line 431
    .end local v51  # "nextCachedAdj":I
    .restart local v3  # "nextCachedAdj":I
    :cond_2ec
    move v4, v3

    move/from16 v3, v50

    goto :goto_2f2

    .line 427
    .end local v27  # "stepCached":I
    .end local v50  # "curCachedAdj":I
    .local v3, "curCachedAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "stepCached":I
    :cond_2f0
    move/from16 v27, v5

    .line 439
    .end local v5  # "stepCached":I
    .restart local v27  # "stepCached":I
    :cond_2f2
    :goto_2f2
    add-int v5, v3, v32

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 440
    add-int v5, v3, v32

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 441
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 358
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "inGroup":Z
    move/from16 v39, v1

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    goto/16 :goto_370

    .line 453
    .end local v46  # "nextEmptyAdj":I
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "nextEmptyAdj":I
    :cond_30f
    move/from16 v5, v45

    goto :goto_314

    .line 449
    .end local v22  # "stepEmpty":I
    .end local v45  # "curEmptyAdj":I
    .local v5, "curEmptyAdj":I
    .local v11, "stepEmpty":I
    :cond_312
    move/from16 v22, v11

    .line 463
    .end local v11  # "stepEmpty":I
    .restart local v22  # "stepEmpty":I
    :cond_314
    :goto_314
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 464
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v11

    iput v11, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 465
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    move/from16 v39, v1

    move/from16 v46, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    goto :goto_370

    .line 398
    .end local v2  # "nextEmptyAdj":I
    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v16  # "lastCachedGroup":I
    .end local v29  # "numBServices":I
    .local v11, "numBServices":I
    .restart local v45  # "curEmptyAdj":I
    .restart local v46  # "nextEmptyAdj":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v48  # "lastCachedGroupUid":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :cond_330
    move/from16 v29, v11

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    .end local v11  # "numBServices":I
    .end local v45  # "curEmptyAdj":I
    .end local v46  # "nextEmptyAdj":I
    .end local v47  # "lastCachedGroup":I
    .end local v48  # "lastCachedGroupUid":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .restart local v2  # "nextEmptyAdj":I
    .restart local v3  # "curCachedAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .restart local v7  # "lastCachedGroupImportance":I
    .restart local v16  # "lastCachedGroup":I
    .restart local v29  # "numBServices":I
    move/from16 v39, v1

    goto :goto_370

    .line 389
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1  # "retryCycles":Z
    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v9  # "emptyFactor":I
    .end local v29  # "numBServices":I
    .end local v33  # "nowElapsed":J
    .end local v55  # "emptyProcessLimit":I
    .end local v57  # "cachedProcessLimit":I
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "numBServices":I
    .local v16, "N":I
    .local v28, "nowElapsed":J
    .restart local v39  # "retryCycles":Z
    .restart local v40  # "emptyProcessLimit":I
    .restart local v45  # "curEmptyAdj":I
    .restart local v46  # "nextEmptyAdj":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v48  # "lastCachedGroupUid":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    .restart local v52  # "emptyFactor":I
    .restart local v53  # "cachedProcessLimit":I
    :cond_343
    move-object v0, v2

    move-wide/from16 v33, v28

    move/from16 v55, v40

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    move/from16 v9, v52

    move/from16 v57, v53

    const/16 v30, 0x0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v10, v16

    move/from16 v16, v47

    .line 358
    .end local v11  # "numBServices":I
    .end local v40  # "emptyProcessLimit":I
    .end local v45  # "curEmptyAdj":I
    .end local v46  # "nextEmptyAdj":I
    .end local v47  # "lastCachedGroup":I
    .end local v48  # "lastCachedGroupUid":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v50  # "curCachedAdj":I
    .end local v51  # "nextCachedAdj":I
    .end local v52  # "emptyFactor":I
    .end local v53  # "cachedProcessLimit":I
    .local v2, "nextEmptyAdj":I
    .restart local v3  # "curCachedAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .restart local v7  # "lastCachedGroupImportance":I
    .restart local v9  # "emptyFactor":I
    .local v10, "N":I
    .local v16, "lastCachedGroup":I
    .local v28, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v29  # "numBServices":I
    .restart local v33  # "nowElapsed":J
    .restart local v55  # "emptyProcessLimit":I
    .restart local v57  # "cachedProcessLimit":I
    move/from16 v46, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    .end local v2  # "nextEmptyAdj":I
    .end local v3  # "curCachedAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "lastCachedGroupImportance":I
    .end local v16  # "lastCachedGroup":I
    .restart local v45  # "curEmptyAdj":I
    .restart local v46  # "nextEmptyAdj":I
    .restart local v47  # "lastCachedGroup":I
    .restart local v48  # "lastCachedGroupUid":I
    .restart local v49  # "lastCachedGroupImportance":I
    .restart local v50  # "curCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    :goto_370
    add-int/lit8 v0, v54, -0x1

    move-object/from16 v11, p1

    move/from16 v16, v10

    move-object/from16 v44, v28

    move/from16 v7, v29

    move/from16 v3, v30

    move-wide/from16 v5, v33

    move/from16 v40, v55

    move/from16 v1, v57

    const/16 v2, 0x3e9

    const/16 v4, 0x14

    move v10, v0

    move v0, v9

    move/from16 v9, v31

    .end local v54  # "i":I
    .local v0, "i":I
    goto/16 :goto_ea

    .end local v9  # "emptyFactor":I
    .end local v29  # "numBServices":I
    .end local v33  # "nowElapsed":J
    .end local v55  # "emptyProcessLimit":I
    .end local v57  # "cachedProcessLimit":I
    .local v0, "emptyFactor":I
    .local v1, "cachedProcessLimit":I
    .local v7, "numBServices":I
    .local v10, "i":I
    .local v16, "N":I
    .local v28, "nowElapsed":J
    .restart local v40  # "emptyProcessLimit":I
    .restart local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_38c
    move v11, v0

    move/from16 v57, v1

    move/from16 v54, v10

    move/from16 v10, v16

    move-wide/from16 v33, v28

    move/from16 v55, v40

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v6, v48

    move/from16 v28, v49

    const/16 v30, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v16, v4

    move/from16 v4, v51

    .line 478
    .end local v0  # "emptyFactor":I
    .end local v1  # "cachedProcessLimit":I
    .end local v16  # "N":I
    .end local v40  # "emptyProcessLimit":I
    .end local v45  # "curEmptyAdj":I
    .end local v46  # "nextEmptyAdj":I
    .end local v48  # "lastCachedGroupUid":I
    .end local v49  # "lastCachedGroupImportance":I
    .end local v51  # "nextCachedAdj":I
    .restart local v2  # "nextEmptyAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .local v10, "N":I
    .local v11, "emptyFactor":I
    .local v28, "lastCachedGroupImportance":I
    .restart local v33  # "nowElapsed":J
    .restart local v55  # "emptyProcessLimit":I
    .restart local v57  # "cachedProcessLimit":I
    const/4 v0, 0x0

    move v1, v0

    .line 479
    .local v1, "cycleCount":I
    :goto_3a9
    if-eqz v39, :cond_49b

    const/16 v0, 0xa

    if-ge v1, v0, :cond_49b

    .line 480
    add-int/lit8 v29, v1, 0x1

    .line 481
    .end local v1  # "cycleCount":I
    .local v29, "cycleCount":I
    const/4 v1, 0x0

    .line 483
    .end local v39  # "retryCycles":Z
    .local v1, "retryCycles":Z
    const/16 v35, 0x0

    move/from16 v0, v35

    .local v0, "i":I
    :goto_3b6
    if-ge v0, v10, :cond_3ec

    .line 484
    move/from16 v35, v1

    .end local v1  # "retryCycles":Z
    .local v35, "retryCycles":Z
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 485
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v38, v2

    .end local v2  # "nextEmptyAdj":I
    .local v38, "nextEmptyAdj":I
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_3e0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3e0

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    move/from16 v40, v7

    const/4 v7, 0x1

    .end local v7  # "numBServices":I
    .local v40, "numBServices":I
    if-ne v2, v7, :cond_3e3

    .line 486
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 487
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    goto :goto_3e3

    .line 485
    .end local v40  # "numBServices":I
    .restart local v7  # "numBServices":I
    :cond_3e0
    move/from16 v40, v7

    const/4 v7, 0x1

    .line 483
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7  # "numBServices":I
    .restart local v40  # "numBServices":I
    :cond_3e3
    :goto_3e3
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v35

    move/from16 v2, v38

    move/from16 v7, v40

    goto :goto_3b6

    .end local v35  # "retryCycles":Z
    .end local v38  # "nextEmptyAdj":I
    .end local v40  # "numBServices":I
    .local v1, "retryCycles":Z
    .restart local v2  # "nextEmptyAdj":I
    .restart local v7  # "numBServices":I
    :cond_3ec
    move/from16 v35, v1

    move/from16 v38, v2

    move/from16 v40, v7

    const/4 v7, 0x1

    .line 491
    .end local v0  # "i":I
    .end local v1  # "retryCycles":Z
    .end local v2  # "nextEmptyAdj":I
    .end local v7  # "numBServices":I
    .restart local v35  # "retryCycles":Z
    .restart local v38  # "nextEmptyAdj":I
    .restart local v40  # "numBServices":I
    const/4 v0, 0x0

    move v2, v0

    move/from16 v39, v35

    .end local v35  # "retryCycles":Z
    .local v2, "i":I
    .restart local v39  # "retryCycles":Z
    :goto_3f7
    if-ge v2, v10, :cond_475

    .line 492
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 493
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_444

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_444

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-ne v0, v7, :cond_444

    .line 494
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v35

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v41, 0xa

    move-object/from16 v0, p0

    move-object/from16 v48, v1

    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    .local v48, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v49, v38

    move/from16 v38, v2

    .end local v2  # "i":I
    .local v38, "i":I
    .local v49, "nextEmptyAdj":I
    move/from16 v2, v35

    move-object/from16 v58, v3

    move-object v3, v12

    move/from16 v51, v4

    move-object/from16 v59, v16

    .end local v4  # "nextCachedAdj":I
    .restart local v51  # "nextCachedAdj":I
    move/from16 v4, v45

    move/from16 v45, v5

    move/from16 v16, v6

    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .local v16, "lastCachedGroupUid":I
    .restart local v45  # "curEmptyAdj":I
    move-wide v5, v13

    move/from16 v52, v11

    move-object/from16 v35, v12

    move/from16 v11, v40

    move v12, v7

    .end local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40  # "numBServices":I
    .local v11, "numBServices":I
    .local v35, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .restart local v52  # "emptyFactor":I
    move/from16 v7, v46

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-result v0

    if-eqz v0, :cond_45d

    .line 496
    const/16 v39, 0x1

    goto :goto_45d

    .line 493
    .end local v16  # "lastCachedGroupUid":I
    .end local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45  # "curEmptyAdj":I
    .end local v48  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v49  # "nextEmptyAdj":I
    .end local v51  # "nextCachedAdj":I
    .end local v52  # "emptyFactor":I
    .restart local v1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2  # "i":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .local v11, "emptyFactor":I
    .restart local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "nextEmptyAdj":I
    .restart local v40  # "numBServices":I
    :cond_444
    move-object/from16 v48, v1

    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    move/from16 v49, v38

    move/from16 v11, v40

    const/16 v41, 0xa

    move/from16 v38, v2

    move/from16 v16, v6

    move v12, v7

    .line 491
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "i":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40  # "numBServices":I
    .local v11, "numBServices":I
    .restart local v16  # "lastCachedGroupUid":I
    .restart local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "i":I
    .restart local v45  # "curEmptyAdj":I
    .restart local v49  # "nextEmptyAdj":I
    .restart local v51  # "nextCachedAdj":I
    .restart local v52  # "emptyFactor":I
    :cond_45d
    :goto_45d
    add-int/lit8 v2, v38, 0x1

    move/from16 v40, v11

    move v7, v12

    move/from16 v6, v16

    move-object/from16 v12, v35

    move/from16 v5, v45

    move/from16 v38, v49

    move/from16 v4, v51

    move/from16 v11, v52

    move-object/from16 v3, v58

    move-object/from16 v16, v59

    const-wide/16 v42, 0x0

    .end local v38  # "i":I
    .restart local v2  # "i":I
    goto :goto_3f7

    .end local v16  # "lastCachedGroupUid":I
    .end local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45  # "curEmptyAdj":I
    .end local v49  # "nextEmptyAdj":I
    .end local v51  # "nextCachedAdj":I
    .end local v52  # "emptyFactor":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .local v11, "emptyFactor":I
    .restart local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "nextEmptyAdj":I
    .restart local v40  # "numBServices":I
    :cond_475
    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    move/from16 v49, v38

    move/from16 v11, v40

    const/16 v41, 0xa

    move/from16 v38, v2

    move/from16 v16, v6

    move v12, v7

    .end local v2  # "i":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40  # "numBServices":I
    .local v11, "numBServices":I
    .restart local v16  # "lastCachedGroupUid":I
    .restart local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "i":I
    .restart local v45  # "curEmptyAdj":I
    .restart local v49  # "nextEmptyAdj":I
    .restart local v51  # "nextCachedAdj":I
    .restart local v52  # "emptyFactor":I
    move v7, v11

    move/from16 v1, v29

    move-object/from16 v12, v35

    move/from16 v2, v49

    move/from16 v11, v52

    move-object/from16 v16, v59

    const-wide/16 v42, 0x0

    .end local v38  # "i":I
    goto/16 :goto_3a9

    .line 479
    .end local v16  # "lastCachedGroupUid":I
    .end local v29  # "cycleCount":I
    .end local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45  # "curEmptyAdj":I
    .end local v49  # "nextEmptyAdj":I
    .end local v51  # "nextCachedAdj":I
    .end local v52  # "emptyFactor":I
    .local v1, "cycleCount":I
    .local v2, "nextEmptyAdj":I
    .restart local v4  # "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "lastCachedGroupUid":I
    .restart local v7  # "numBServices":I
    .local v11, "emptyFactor":I
    .restart local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_49b
    move/from16 v49, v2

    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    const/4 v12, 0x1

    move/from16 v16, v6

    move v11, v7

    .line 502
    .end local v2  # "nextEmptyAdj":I
    .end local v4  # "nextCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "lastCachedGroupUid":I
    .end local v7  # "numBServices":I
    .end local v12  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v11, "numBServices":I
    .restart local v16  # "lastCachedGroupUid":I
    .restart local v35  # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .restart local v45  # "curEmptyAdj":I
    .restart local v49  # "nextEmptyAdj":I
    .restart local v51  # "nextCachedAdj":I
    .restart local v52  # "emptyFactor":I
    move/from16 v0, v30

    .end local v16  # "lastCachedGroupUid":I
    .local v0, "lastCachedGroupUid":I
    move/from16 v2, v30

    .line 504
    .end local v47  # "lastCachedGroup":I
    .local v2, "lastCachedGroup":I
    add-int/lit8 v7, v10, -0x1

    move v4, v2

    move/from16 v5, v23

    move/from16 v6, v25

    move/from16 v3, v26

    move v2, v0

    .end local v0  # "lastCachedGroupUid":I
    .end local v23  # "numCached":I
    .end local v25  # "numEmpty":I
    .end local v26  # "numTrimming":I
    .local v2, "lastCachedGroupUid":I
    .local v3, "numTrimming":I
    .local v4, "lastCachedGroup":I
    .local v5, "numCached":I
    .local v6, "numEmpty":I
    .local v7, "i":I
    :goto_4bb
    if-ltz v7, :cond_62f

    .line 505
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 506
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_608

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_608

    .line 507
    const/4 v12, 0x1

    move-object/from16 v16, v0

    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .local v16, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    move/from16 v29, v1

    .end local v1  # "cycleCount":I
    .restart local v29  # "cycleCount":I
    move-object/from16 v1, v16

    move/from16 v23, v10

    move v10, v2

    .end local v2  # "lastCachedGroupUid":I
    .local v10, "lastCachedGroupUid":I
    .local v23, "N":I
    move v2, v12

    move v12, v3

    move/from16 v60, v4

    .end local v3  # "numTrimming":I
    .end local v4  # "lastCachedGroup":I
    .local v12, "numTrimming":I
    .local v60, "lastCachedGroup":I
    move-wide v3, v13

    move-wide/from16 v40, v13

    move/from16 v25, v15

    move v15, v5

    move v13, v6

    .end local v5  # "numCached":I
    .end local v6  # "numEmpty":I
    .local v13, "numEmpty":I
    .local v15, "numCached":I
    .local v25, "cachedFactor":I
    .local v40, "now":J
    move-wide/from16 v5, v33

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 510
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_561

    const/16 v1, 0x12

    if-eq v0, v1, :cond_561

    const/16 v1, 0x14

    if-eq v0, v1, :cond_504

    .line 547
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v0, v16

    goto :goto_538

    .line 534
    :cond_504
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v13, v0, :cond_53e

    move-object/from16 v0, v16

    .end local v16  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v2, v2, v17

    if-gez v2, :cond_540

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1b7740

    add-long v5, v17, v3

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 551
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "app":Lcom/android/server/am/ProcessRecord;
    :goto_538
    move/from16 v2, v55

    move/from16 v14, v57

    .end local v16  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_5b1

    .line 534
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_53e
    move-object/from16 v0, v16

    .line 540
    .end local v16  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_540
    add-int/lit8 v6, v13, 0x1

    .line 541
    .end local v13  # "numEmpty":I
    .restart local v6  # "numEmpty":I
    move/from16 v2, v55

    .end local v55  # "emptyProcessLimit":I
    .local v2, "emptyProcessLimit":I
    if-le v6, v2, :cond_55c

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_55d

    .line 541
    :cond_55c
    const/4 v4, 0x1

    .line 551
    :goto_55d
    move v13, v6

    move/from16 v14, v57

    goto :goto_5b1

    .line 510
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "emptyProcessLimit":I
    .end local v6  # "numEmpty":I
    .restart local v13  # "numEmpty":I
    .restart local v16  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v55  # "emptyProcessLimit":I
    :cond_561
    move-object/from16 v0, v16

    move/from16 v2, v55

    const/16 v1, 0x14

    const/4 v4, 0x1

    .line 513
    .end local v16  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v55  # "emptyProcessLimit":I
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2  # "emptyProcessLimit":I
    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v3, v4

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 514
    add-int/lit8 v5, v15, 0x1

    .line 515
    .end local v15  # "numCached":I
    .restart local v5  # "numCached":I
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_58c

    .line 516
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v3, :cond_583

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v60

    .end local v60  # "lastCachedGroup":I
    .restart local v4  # "lastCachedGroup":I
    if-ne v4, v3, :cond_585

    .line 521
    add-int/lit8 v24, v24, 0x1

    move v3, v10

    goto :goto_592

    .line 516
    .end local v4  # "lastCachedGroup":I
    .restart local v60  # "lastCachedGroup":I
    :cond_583
    move/from16 v4, v60

    .line 523
    .end local v60  # "lastCachedGroup":I
    .restart local v4  # "lastCachedGroup":I
    :cond_585
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 524
    .end local v10  # "lastCachedGroupUid":I
    .local v3, "lastCachedGroupUid":I
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_592

    .line 527
    .end local v3  # "lastCachedGroupUid":I
    .end local v4  # "lastCachedGroup":I
    .restart local v10  # "lastCachedGroupUid":I
    .restart local v60  # "lastCachedGroup":I
    :cond_58c
    move/from16 v4, v60

    .end local v60  # "lastCachedGroup":I
    .restart local v4  # "lastCachedGroup":I
    move/from16 v4, v30

    move/from16 v3, v30

    .line 529
    .end local v10  # "lastCachedGroupUid":I
    .restart local v3  # "lastCachedGroupUid":I
    :goto_592
    sub-int v6, v5, v24

    move/from16 v14, v57

    .end local v57  # "cachedProcessLimit":I
    .local v14, "cachedProcessLimit":I
    if-le v6, v14, :cond_5ad

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cached #"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 551
    :cond_5ad
    move v10, v3

    move/from16 v60, v4

    move v15, v5

    .end local v3  # "lastCachedGroupUid":I
    .end local v4  # "lastCachedGroup":I
    .end local v5  # "numCached":I
    .restart local v10  # "lastCachedGroupUid":I
    .restart local v15  # "numCached":I
    .restart local v60  # "lastCachedGroup":I
    :goto_5b1
    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v3, :cond_5c9

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_5c9

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v3, :cond_5c9

    .line 559
    const-string/jumbo v3, "isolated not needed"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_5ef

    .line 562
    :cond_5c9
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 563
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v3, :cond_5ef

    .line 564
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/UidRecord;->ephemeral:Z

    .line 565
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v5

    if-le v4, v5, :cond_5e6

    .line 566
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 568
    :cond_5e6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_5ef

    .line 569
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 574
    .end local v3  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_5ef
    :goto_5ef
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xf

    if-lt v3, v4, :cond_602

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_602

    .line 576
    add-int/lit8 v3, v12, 0x1

    move v6, v13

    move v5, v15

    move/from16 v4, v60

    .end local v12  # "numTrimming":I
    .local v3, "numTrimming":I
    goto :goto_61d

    .line 504
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "numTrimming":I
    .restart local v12  # "numTrimming":I
    :cond_602
    move v3, v12

    move v6, v13

    move v5, v15

    move/from16 v4, v60

    goto :goto_61d

    .line 506
    .end local v12  # "numTrimming":I
    .end local v14  # "cachedProcessLimit":I
    .end local v23  # "N":I
    .end local v25  # "cachedFactor":I
    .end local v29  # "cycleCount":I
    .end local v40  # "now":J
    .end local v60  # "lastCachedGroup":I
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1  # "cycleCount":I
    .local v2, "lastCachedGroupUid":I
    .restart local v3  # "numTrimming":I
    .restart local v4  # "lastCachedGroup":I
    .restart local v5  # "numCached":I
    .restart local v6  # "numEmpty":I
    .local v10, "N":I
    .local v13, "now":J
    .local v15, "cachedFactor":I
    .restart local v55  # "emptyProcessLimit":I
    .restart local v57  # "cachedProcessLimit":I
    :cond_608
    move/from16 v29, v1

    move v12, v3

    move/from16 v23, v10

    move-wide/from16 v40, v13

    move/from16 v25, v15

    move/from16 v14, v57

    const/16 v1, 0x14

    move v10, v2

    move v15, v5

    move v13, v6

    move/from16 v2, v55

    .line 504
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1  # "cycleCount":I
    .end local v3  # "numTrimming":I
    .end local v5  # "numCached":I
    .end local v6  # "numEmpty":I
    .end local v55  # "emptyProcessLimit":I
    .end local v57  # "cachedProcessLimit":I
    .local v2, "emptyProcessLimit":I
    .local v10, "lastCachedGroupUid":I
    .restart local v12  # "numTrimming":I
    .local v13, "numEmpty":I
    .restart local v14  # "cachedProcessLimit":I
    .local v15, "numCached":I
    .restart local v23  # "N":I
    .restart local v25  # "cachedFactor":I
    .restart local v29  # "cycleCount":I
    .restart local v40  # "now":J
    move v3, v12

    move v6, v13

    move v5, v15

    .end local v12  # "numTrimming":I
    .end local v13  # "numEmpty":I
    .end local v15  # "numCached":I
    .restart local v3  # "numTrimming":I
    .restart local v5  # "numCached":I
    .restart local v6  # "numEmpty":I
    :goto_61d
    add-int/lit8 v7, v7, -0x1

    move/from16 v55, v2

    move v2, v10

    move/from16 v57, v14

    move/from16 v10, v23

    move/from16 v15, v25

    move/from16 v1, v29

    move-wide/from16 v13, v40

    const/4 v12, 0x1

    goto/16 :goto_4bb

    .end local v14  # "cachedProcessLimit":I
    .end local v23  # "N":I
    .end local v25  # "cachedFactor":I
    .end local v29  # "cycleCount":I
    .end local v40  # "now":J
    .restart local v1  # "cycleCount":I
    .local v2, "lastCachedGroupUid":I
    .local v10, "N":I
    .local v13, "now":J
    .local v15, "cachedFactor":I
    .restart local v55  # "emptyProcessLimit":I
    .restart local v57  # "cachedProcessLimit":I
    :cond_62f
    move/from16 v29, v1

    move v12, v3

    move/from16 v23, v10

    move-wide/from16 v40, v13

    move/from16 v25, v15

    move/from16 v14, v57

    move v10, v2

    move v15, v5

    move v13, v6

    move/from16 v2, v55

    .line 581
    .end local v1  # "cycleCount":I
    .end local v3  # "numTrimming":I
    .end local v5  # "numCached":I
    .end local v6  # "numEmpty":I
    .end local v7  # "i":I
    .end local v55  # "emptyProcessLimit":I
    .end local v57  # "cachedProcessLimit":I
    .local v2, "emptyProcessLimit":I
    .local v10, "lastCachedGroupUid":I
    .restart local v12  # "numTrimming":I
    .local v13, "numEmpty":I
    .restart local v14  # "cachedProcessLimit":I
    .local v15, "numCached":I
    .restart local v23  # "N":I
    .restart local v25  # "cachedFactor":I
    .restart local v29  # "cycleCount":I
    .restart local v40  # "now":J
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v11, v0, :cond_687

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowLowerMemLevel:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_687

    move-object/from16 v0, v44

    .end local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_689

    .line 583
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e7

    invoke-static {v1, v3, v5}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 585
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 586
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_689

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v58

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v59

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is moved to higher adj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_689

    .line 581
    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_687
    move-object/from16 v0, v44

    .line 590
    .end local v44  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_689
    :goto_689
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->incrementProcStateSeqAndNotifyAppsLocked()V

    .line 592
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 594
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v15, v13, v12}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v1

    .line 596
    .local v1, "allChanged":Z
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_6a7

    .line 599
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v5, "always-finish"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 602
    :cond_6a7
    if-eqz v1, :cond_6b9

    .line 603
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 604
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v5

    .line 603
    move/from16 v9, v30

    move-wide/from16 v6, v40

    .end local v40  # "now":J
    .local v6, "now":J
    invoke-virtual {v3, v6, v7, v9, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto :goto_6bd

    .line 602
    .end local v6  # "now":J
    .restart local v40  # "now":J
    :cond_6b9
    move/from16 v9, v30

    move-wide/from16 v6, v40

    .line 607
    .end local v40  # "now":J
    .restart local v6  # "now":J
    :goto_6bd
    const/4 v3, 0x0

    .line 610
    .local v3, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_6c5

    .line 611
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 613
    :cond_6c5
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v5}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_6cf
    const-string v9, "ActivityManager"

    if-ltz v5, :cond_825

    .line 614
    move-object/from16 v16, v0

    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v16, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 615
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    const/16 v20, 0x0

    .line 616
    .local v20, "uidChange":I
    move/from16 v21, v1

    .end local v1  # "allChanged":Z
    .local v21, "allChanged":Z
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    move/from16 v55, v2

    .end local v2  # "emptyProcessLimit":I
    .restart local v55  # "emptyProcessLimit":I
    const/16 v2, 0x15

    if-eq v1, v2, :cond_816

    iget v1, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 617
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    if-ne v1, v2, :cond_6fc

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v2, v0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v1, v2, :cond_6f8

    goto :goto_6fc

    :cond_6f8
    move/from16 v38, v10

    goto/16 :goto_818

    .line 619
    :cond_6fc
    :goto_6fc
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_73e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": proc state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", whitelist from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_73e
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-eqz v1, :cond_79b

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v1, :cond_79b

    .line 627
    iget v1, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-eqz v1, :cond_75c

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v1, :cond_759

    goto :goto_75c

    :cond_759
    move/from16 v38, v10

    goto :goto_77e

    .line 629
    :cond_75c
    :goto_75c
    move-wide/from16 v1, v33

    .end local v33  # "nowElapsed":J
    .local v1, "nowElapsed":J
    iput-wide v1, v0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 630
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .end local v1  # "nowElapsed":J
    .restart local v33  # "nowElapsed":J
    const/16 v1, 0x3a

    invoke-virtual {v9, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_77c

    .line 635
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x3a

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v38, v10

    .end local v10  # "lastCachedGroupUid":I
    .local v38, "lastCachedGroupUid":I
    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_77e

    .line 630
    .end local v38  # "lastCachedGroupUid":I
    .restart local v10  # "lastCachedGroupUid":I
    :cond_77c
    move/from16 v38, v10

    .line 639
    .end local v10  # "lastCachedGroupUid":I
    .restart local v38  # "lastCachedGroupUid":I
    :goto_77e
    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_797

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v1, :cond_797

    .line 640
    const/16 v20, 0x2

    .line 641
    if-nez v3, :cond_790

    .line 642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 644
    :cond_790
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    goto :goto_7b1

    .line 654
    :cond_797
    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    goto :goto_7b1

    .line 623
    .end local v38  # "lastCachedGroupUid":I
    .restart local v10  # "lastCachedGroupUid":I
    :cond_79b
    move/from16 v38, v10

    .line 647
    .end local v10  # "lastCachedGroupUid":I
    .restart local v38  # "lastCachedGroupUid":I
    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_7ac

    .line 648
    const/16 v20, 0x4

    .line 649
    iget v1, v0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 650
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    goto :goto_7ad

    .line 647
    :cond_7ac
    const/4 v1, 0x0

    .line 652
    :goto_7ad
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 654
    :goto_7b1
    iget v2, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v1, 0xc

    if-le v2, v1, :cond_7b9

    const/4 v1, 0x1

    goto :goto_7ba

    :cond_7b9
    const/4 v1, 0x0

    .line 656
    .local v1, "wasCached":Z
    :goto_7ba
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    const/16 v9, 0xc

    if-le v2, v9, :cond_7c4

    const/4 v2, 0x1

    goto :goto_7c5

    :cond_7c4
    const/4 v2, 0x0

    .line 658
    .local v2, "isCached":Z
    :goto_7c5
    if-ne v1, v2, :cond_7d1

    iget v9, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_7ce

    goto :goto_7d1

    :cond_7ce
    move/from16 v9, v20

    goto :goto_7dc

    .line 659
    :cond_7d1
    :goto_7d1
    if-eqz v2, :cond_7d6

    const/16 v9, 0x8

    goto :goto_7d8

    :cond_7d6
    const/16 v9, 0x10

    :goto_7d8
    or-int v20, v20, v9

    move/from16 v9, v20

    .line 661
    .end local v20  # "uidChange":I
    .local v9, "uidChange":I
    :goto_7dc
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    iput v10, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 662
    iget-boolean v10, v0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v10, v0, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 663
    iget-boolean v10, v0, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v10, v0, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 664
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move/from16 v20, v1

    .end local v1  # "wasCached":Z
    .local v20, "wasCached":Z
    iget v1, v0, Lcom/android/server/am/UidRecord;->uid:I

    move/from16 v26, v2

    .end local v2  # "isCached":Z
    .local v26, "isCached":Z
    iget v2, v0, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v10, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 665
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v9}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 666
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 667
    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v1, :cond_818

    .line 668
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    goto :goto_818

    .line 616
    .end local v9  # "uidChange":I
    .end local v26  # "isCached":Z
    .end local v38  # "lastCachedGroupUid":I
    .restart local v10  # "lastCachedGroupUid":I
    .local v20, "uidChange":I
    :cond_816
    move/from16 v38, v10

    .line 613
    .end local v0  # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v10  # "lastCachedGroupUid":I
    .end local v20  # "uidChange":I
    .restart local v38  # "lastCachedGroupUid":I
    :cond_818
    :goto_818
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v10, v38

    move/from16 v2, v55

    const/4 v9, 0x0

    goto/16 :goto_6cf

    .end local v16  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v21  # "allChanged":Z
    .end local v38  # "lastCachedGroupUid":I
    .end local v55  # "emptyProcessLimit":I
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v1, "allChanged":Z
    .local v2, "emptyProcessLimit":I
    .restart local v10  # "lastCachedGroupUid":I
    :cond_825
    move-object/from16 v16, v0

    move/from16 v21, v1

    move/from16 v55, v2

    move/from16 v38, v10

    .line 672
    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v1  # "allChanged":Z
    .end local v2  # "emptyProcessLimit":I
    .end local v5  # "i":I
    .end local v10  # "lastCachedGroupUid":I
    .restart local v16  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v21  # "allChanged":Z
    .restart local v38  # "lastCachedGroupUid":I
    .restart local v55  # "emptyProcessLimit":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_834

    .line 673
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 676
    :cond_834
    if-eqz v3, :cond_850

    .line 679
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_83c
    if-ltz v0, :cond_850

    .line 680
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    iget v2, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 679
    add-int/lit8 v0, v0, -0x1

    goto :goto_83c

    .line 684
    .end local v0  # "i":I
    :cond_850
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_86a

    .line 685
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v1, v2, v5}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 690
    :cond_86a
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 692
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_896

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 698
    .local v0, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did OOM ADJ in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v0  # "duration":J
    :cond_896
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 704
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/AmsInjector;->updateOomAdjLocked(Ljava/util/ArrayList;)V

    .line 706
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    return-void

    :pswitch_data_8aa
    .packed-switch 0x11
        :pswitch_25e  #00000011
        :pswitch_25e  #00000012
        :pswitch_25e  #00000013
    .end packed-switch
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjAll"  # Z
    .param p3, "oomAdjReason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 240
    .local v0, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 242
    .local v8, "wasCached":Z
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 248
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v9, 0x3e9

    const/16 v2, 0x384

    if-lt v1, v2, :cond_1e

    .line 249
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v9

    .line 250
    .local v3, "cachedAdj":I
    :goto_1f
    const/4 v5, 0x0

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 250
    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    .line 252
    .local v1, "success":Z
    if-eqz p2, :cond_3a

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-ne v8, v2, :cond_37

    .line 253
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_3a

    .line 256
    :cond_37
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 258
    :cond_3a
    return v1
.end method
