.class public Lcom/android/server/os/IntelligentEngineService;
.super Landroid/perf/IIntelligentEngineService$Stub;
.source "IntelligentEngineService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;
    }
.end annotation


# static fields
.field static final BOOST_INFO_CONFIG_NAME:Ljava/lang/String; = "boost_info_configration"

.field private static final BOOST_INFO_CONFIG_PACKAGE_NAME:Ljava/lang/String; = "boost_info_package_Name"

.field private static final BOOST_INFO_CONFIG_TIMEOUT:Ljava/lang/String; = "boost_info_timeout"

.field private static final H_CONFIG_APP_BOOST:I = 0x3

.field private static final H_CONFIG_GAME_BOOST:I = 0x2

.field private static final H_CONFIG_MIGRATE_BIGCORE_MSG:I = 0x4

.field static final H_CONFIG_SCENE_BOOST:I = 0x1

.field private static final LIST_OBTAIN_BOOST_TIMEOUT:I = 0x3e8

.field private static final PERIODIC_TIME:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field private static final TOUCH_BOOST_TIMEOUT:I = 0x64

.field private static final TOUCH_DOWN_BOOST_TIMEOUT:I = 0x64

.field private static final mLock:Ljava/lang/Object;

.field private static mPowerMode:I

.field private static mPrePowerMode:I

.field private static sRemoteConfigServiceName:Landroid/content/ComponentName;

.field private static sWhiteListServiceName:Landroid/content/ComponentName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameBoostingPackageName:Ljava/lang/String;

.field private mIsGameBoosting:Z

.field private mIsGameMode:Z

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mLastFlingBoostTime:J

.field private mLastFlingBoostTimeOut:J

.field private mLastListBoostTime:J

.field private mLastTouchBoostTime:J

.field private mLastTouchDownBoostTime:J

.field private mScenarioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/os/BoostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/os/IntelligentAppConfigService;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService;->sWhiteListServiceName:Landroid/content/ComponentName;

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/os/IntelligentRemoteConfigService;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService;->sRemoteConfigServiceName:Landroid/content/ComponentName;

    .line 83
    const/4 v0, 0x1

    sput v0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    .line 84
    sput v0, Lcom/android/server/os/IntelligentEngineService;->mPrePowerMode:I

    .line 92
    sget-boolean v0, Landroid/perf/LogUtils;->MIGRATE_BIGCORE:Z

    if-eqz v0, :cond_32

    .line 93
    const-string/jumbo v0, "intelligentEngine_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    :cond_32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Landroid/perf/IIntelligentEngineService$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchBoostTime:J

    .line 73
    iput-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchDownBoostTime:J

    .line 74
    iput-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastListBoostTime:J

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameMode:Z

    .line 88
    iput-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTime:J

    .line 89
    iput-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTimeOut:J

    .line 98
    const-string v0, "Init IntelligentEngineService"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->initPerfNodeStream()V

    .line 101
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->initGedNodeStream()V

    .line 102
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->loadDataFromFile()V

    .line 108
    invoke-direct {p0}, Lcom/android/server/os/IntelligentEngineService;->initWorkThread()V

    .line 109
    invoke-direct {p0}, Lcom/android/server/os/IntelligentEngineService;->initPowerMode()V

    .line 110
    invoke-direct {p0}, Lcom/android/server/os/IntelligentEngineService;->registerPowerModeObserver()V

    .line 111
    const-string/jumbo v0, "persist.sys.enable_strategy"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable_strategy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 113
    if-eqz v0, :cond_56

    .line 114
    new-instance v1, Lcom/android/server/os/StrategyManager;

    invoke-direct {v1, p1}, Lcom/android/server/os/StrategyManager;-><init>(Landroid/content/Context;)V

    .line 117
    :cond_56
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 47
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->nativeMigrateFromBigCore()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .line 47
    sget v0, Lcom/android/server/os/IntelligentEngineService;->mPrePowerMode:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 47
    sput p0, Lcom/android/server/os/IntelligentEngineService;->mPrePowerMode:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/os/IntelligentEngineService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchBoostTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/os/IntelligentEngineService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # J

    .line 47
    iput-wide p1, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchBoostTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/os/IntelligentEngineService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastListBoostTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/os/IntelligentEngineService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # J

    .line 47
    iput-wide p1, p0, Lcom/android/server/os/IntelligentEngineService;->mLastListBoostTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/os/IntelligentEngineService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchDownBoostTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/os/IntelligentEngineService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # J

    .line 47
    iput-wide p1, p0, Lcom/android/server/os/IntelligentEngineService;->mLastTouchDownBoostTime:J

    return-wide p1
.end method

.method static synthetic access$500()I
    .registers 1

    .line 47
    sget v0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 47
    sput p0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/os/IntelligentEngineService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/os/IntelligentEngineService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/os/IntelligentEngineService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/os/IntelligentEngineService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/os/IntelligentEngineService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"  # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameMode:Z

    return p1
.end method

.method private initPowerMode()V
    .registers 6

    .line 155
    const-string v0, "Init Power Mode"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "cpu_l"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    .line 158
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, "data":Landroid/os/Bundle;
    sget v3, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    if-eqz v3, :cond_49

    const/4 v4, 0x2

    if-eq v3, v1, :cond_3e

    if-eq v3, v4, :cond_33

    .line 174
    const-string v1, "boost_info_configration"

    const-string v3, "PowerModeNormal"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v4}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    goto :goto_55

    .line 170
    :cond_33
    const-string v3, "boost_info_configration"

    const-string v4, "PowerModeLow"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v1}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 172
    goto :goto_55

    .line 166
    :cond_3e
    const-string v1, "boost_info_configration"

    const-string v3, "PowerModeNormal"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v4}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 168
    goto :goto_55

    .line 162
    :cond_49
    const-string v1, "boost_info_configration"

    const-string v3, "PowerModeHigh"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 164
    nop

    .line 178
    :goto_55
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    sget-object v1, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_62
    move-exception v3

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_62

    throw v3
.end method

.method private initRemoteConfigJob()V
    .registers 5

    .line 141
    const-string v0, "Init remote config Job Scheduler"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "jobId":I
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->sRemoteConfigServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 147
    .local v1, "getRemoteConfigTask":Landroid/app/job/JobInfo$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_26

    .line 148
    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 150
    :cond_26
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 151
    return-void
.end method

.method private initWhiteListJob()V
    .registers 6

    .line 130
    const-string v0, "Init white list Job Scheduler"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x2

    .line 132
    .local v0, "jobId":I
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->sWhiteListServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 134
    const-wide/32 v3, 0x5265c00

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 137
    .local v1, "updateWhiteListTask":Landroid/app/job/JobInfo;
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 138
    return-void
.end method

.method private initWorkThread()V
    .registers 4

    .line 123
    const-string v0, "Init WorkThread"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntelligentEngine"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 125
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;-><init>(Lcom/android/server/os/IntelligentEngineService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    .line 127
    return-void
.end method

.method private static native nativeMigrateFromBigCore()I
.end method

.method private static native nativeMigrateToBigCore()I
.end method

.method private registerPowerModeObserver()V
    .registers 5

    .line 185
    const-string v0, "Register PowerMode Observer"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/android/server/os/PowerModeObserver;

    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/os/PowerModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 187
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cpu_l"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    return-void
.end method

.method private simpleHashCode(Ljava/lang/String;)J
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 857
    .local v0, "count":I
    const-wide/16 v1, 0x0

    .line 859
    .local v1, "hashCode":J
    if-nez v0, :cond_b

    .line 860
    const-wide/16 v3, 0x0

    return-wide v3

    .line 861
    :cond_b
    const-wide/16 v3, 0x1f

    if-lez v0, :cond_23

    const/16 v5, 0x8

    if-gt v0, v5, :cond_23

    .line 862
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v0, :cond_22

    .line 863
    mul-long v6, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    add-long v1, v6, v8

    .line 862
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .end local v5  # "i":I
    :cond_22
    goto :goto_35

    .line 866
    :cond_23
    add-int/lit8 v5, v0, -0x8

    add-int/lit8 v5, v5, -0x1

    .restart local v5  # "i":I
    :goto_27
    if-ge v5, v0, :cond_35

    .line 867
    mul-long v6, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    add-long v1, v6, v8

    .line 866
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 870
    .end local v5  # "i":I
    :cond_35
    :goto_35
    return-wide v1
.end method


# virtual methods
.method public boostApp(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boostApp : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 255
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_48
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 257
    monitor-exit v2

    .line 258
    return-void

    .line 257
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public boostAppWithTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "uid"  # I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boostAppWithTimeout : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "boost_info_timeout"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 333
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 335
    monitor-exit v2

    .line 336
    return-void

    .line 335
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3
.end method

.method public boostGame(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boostGame : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 232
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 233
    :try_start_48
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 234
    monitor-exit v2

    .line 235
    return-void

    .line 234
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public boostGameWithTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "uid"  # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boostGameWithTimeout : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "boost_info_timeout"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 309
    monitor-exit v2

    .line 310
    return-void

    .line 309
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3
.end method

.method public boostScene(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boostScene : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 209
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_48
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 211
    monitor-exit v2

    .line 212
    return-void

    .line 211
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public boostSceneWithTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "uid"  # I

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_boosScenetByTimeout : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "boost_info_timeout"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_48
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 283
    monitor-exit v2

    .line 284
    return-void

    .line 283
    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public changePowerMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "powerMode"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_changePowerMode : changePowerMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 380
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 384
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 386
    monitor-exit v2

    .line 387
    return-void

    .line 386
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v3
.end method

.method public isAppNeedBoost(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_isAppNeedBoost : packageName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/android/server/os/ConfigFileUtils;->isAppNeedBoost(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public migrateToBigCore(Ljava/lang/String;J)V
    .registers 10
    .param p1, "configName"  # Ljava/lang/String;
    .param p2, "boostTimeOut"  # J

    .line 411
    sget-boolean v0, Landroid/perf/LogUtils;->MIGRATE_BIGCORE:Z

    if-eqz v0, :cond_54

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTime:J

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTimeOut:J

    cmp-long v0, v0, v4

    const/4 v1, 0x4

    if-gez v0, :cond_1e

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1e

    .line 415
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->removeMessages(I)V

    goto :goto_3f

    .line 418
    :cond_1e
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->removeMessages(I)V

    .line 419
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->nativeMigrateToBigCore()I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service_migrateToBigCore : configName ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nativeMigrateToBigCore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 423
    :goto_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTime:J

    .line 424
    iput-wide p2, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTimeOut:J

    .line 425
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    iget-wide v2, p0, Lcom/android/server/os/IntelligentEngineService;->mLastFlingBoostTimeOut:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    .end local v0  # "msg":Landroid/os/Message;
    :cond_54
    return-void
.end method

.method public sendBoostDelayed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 11
    .param p1, "configuration"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "delayMillis"  # J
    .param p6, "isBoostApp"  # Z

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_sendMessageDelayed : configuration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delayMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isBoostApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 353
    if-eqz p6, :cond_36

    .line 354
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    goto :goto_3d

    .line 356
    .end local v0  # "message":Landroid/os/Message;
    :cond_36
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 358
    .restart local v0  # "message":Landroid/os/Message;
    :goto_3d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "boost_info_timeout"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "boost_info_package_Name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 364
    sget-object v2, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_57
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v0, p4, p5}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    monitor-exit v2

    .line 367
    return-void

    .line 366
    :catchall_5e
    move-exception v3

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_5e

    throw v3
.end method
