.class public Lcom/android/server/AlarmOptimizeStrategy;
.super Ljava/lang/Object;
.source "AlarmOptimizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;,
        Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG_ALARM_OPTIMIZWE:Z = false

.field static final DEFAULT_SEARCH_SPAN:J = 0x493e0L

.field static final DEFAUL_START_SEARCH_SPAN:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "AlarmOptimizeStrategy"


# instance fields
.field private mAlignCount:I

.field private mCandidateTargetAlignPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAlarmOptimize:Z

.field private mIsUsbConnected:Z

.field private mNeedAdjustAlarmPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;

.field private mPowerSavingReceiver:Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;

.field private mReduceBatchCount:I

.field private mScreenOff:Z

.field private mScreenOffTime:J

.field private mService:Lcom/android/server/AlarmManagerService;

.field private mTargetAlignPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/AlarmManagerService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOff:Z

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOffTime:J

    .line 42
    iput-boolean v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mIsUsbConnected:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mDisableAlarmOptimize:Z

    .line 55
    iput-object p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    .line 56
    invoke-direct {p0}, Lcom/android/server/AlarmOptimizeStrategy;->initList()V

    .line 57
    new-instance v0, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;-><init>(Lcom/android/server/AlarmOptimizeStrategy;)V

    iput-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mPackageReceiver:Lcom/android/server/AlarmOptimizeStrategy$PackageReceiver;

    .line 58
    new-instance v0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;-><init>(Lcom/android/server/AlarmOptimizeStrategy;)V

    iput-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mPowerSavingReceiver:Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;

    .line 59
    invoke-direct {p0}, Lcom/android/server/AlarmOptimizeStrategy;->initTargetAlignPackage()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmOptimizeStrategy;)Lcom/android/server/AlarmManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;

    .line 22
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;

    .line 22
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmOptimizeStrategy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;

    .line 22
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AlarmOptimizeStrategy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;
    .param p1, "x1"  # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/AlarmOptimizeStrategy;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;
    .param p1, "x1"  # Z

    .line 22
    iput-boolean p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/AlarmOptimizeStrategy;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;
    .param p1, "x1"  # J

    .line 22
    iput-wide p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/server/AlarmOptimizeStrategy;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmOptimizeStrategy;
    .param p1, "x1"  # Z

    .line 22
    iput-boolean p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mIsUsbConnected:Z

    return p1
.end method

.method private findWakeUpAlarm(Lcom/android/server/AlarmManagerService$Batch;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 7
    .param p1, "batch"  # Lcom/android/server/AlarmManagerService$Batch;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 286
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 288
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 289
    return-object v2

    .line 285
    .end local v2  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 292
    .end local v1  # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private initList()V
    .registers 7

    .line 63
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v3, "com.alibaba.android.rimet"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v3, "com.meizu.cloud"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.sina.weibo"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.immomo.momo"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "ccom.p1.mobile.putong"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.meizu.mzsyncservice"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.meizu.location"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.meizu.regservice"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.meizu.net.pedometer"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.cleanmaster.mguard_cn"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v5, "com.lingan.seeyou"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v5, "com.youloft.calendar"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.xiaoenai.app"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.taobao.qianniu"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.qihoo360.antilostwatch"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.soft.blued"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.facebook.katana"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    const-string v4, "com.facebook.orca"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method private initTargetAlignPackage()V
    .registers 5

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 99
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 100
    iget-object v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mCandidateTargetAlignPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_31

    .line 101
    goto :goto_30

    .line 98
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 106
    .end local v0  # "i":I
    :cond_30
    :goto_30
    goto :goto_35

    .line 104
    :catch_31
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method private isPowerSavingStart()Z
    .registers 9

    .line 364
    iget-boolean v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mIsUsbConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 365
    return v1

    .line 368
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOff:Z

    if-eqz v0, :cond_2a

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    .local v2, "currentTime":J
    const-wide/16 v4, 0x7530

    .line 371
    .local v4, "screenOffThreshold":J
    iget-wide v6, p0, Lcom/android/server/AlarmOptimizeStrategy;->mScreenOffTime:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    const-string v6, "AlarmOptimizeStrategy"

    if-gez v0, :cond_21

    .line 372
    const-string/jumbo v0, "mScreenOff time is not enough"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v1

    .line 375
    .end local v2  # "currentTime":J
    .end local v4  # "screenOffThreshold":J
    :cond_21
    nop

    .line 378
    const-string/jumbo v0, "isPowerSavingStart = true"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_2a
    return v1
.end method


# virtual methods
.method public alginAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;I)I
    .registers 32
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "whichBatch"  # I

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/AlarmOptimizeStrategy;->mDisableAlarmOptimize:Z

    if-eqz v3, :cond_b

    .line 111
    return v2

    .line 113
    :cond_b
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 115
    return v2

    .line 118
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmOptimizeStrategy;->isPowerSavingStart()Z

    move-result v3

    if-nez v3, :cond_19

    .line 120
    return v2

    .line 123
    :cond_19
    iget-object v3, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    if-eqz v3, :cond_24

    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 124
    return v2

    .line 127
    :cond_24
    const/4 v3, 0x0

    .line 128
    .local v3, "match":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    iget-object v6, v0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    .line 129
    iget-object v6, v0, Lcom/android/server/AlarmOptimizeStrategy;->mNeedAdjustAlarmPackage:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_41

    .line 128
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 135
    .end local v5  # "i":I
    :cond_41
    :goto_41
    if-nez v3, :cond_44

    .line 136
    return v2

    .line 139
    :cond_44
    move/from16 v5, p2

    .line 141
    .local v5, "finalBatchIndex":I
    const-wide v6, 0x7fffffffffffffffL

    .line 142
    .local v6, "duration":J
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 144
    .local v8, "whenElapsed":J
    iget-object v10, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    if-eqz v10, :cond_200

    .line 146
    const-wide/32 v10, 0x493e0

    .line 148
    .local v10, "searchSpan":J
    const-wide/32 v12, -0xea60

    .line 150
    .local v12, "startSearchSpan":J
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    const-wide/16 v18, 0x2

    if-lez v14, :cond_68

    .line 151
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v10, v14, v18

    .line 153
    iget-wide v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    goto :goto_74

    .line 155
    :cond_68
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v14, v14, v16

    if-lez v14, :cond_74

    .line 156
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    mul-long v10, v14, v18

    .line 158
    const-wide/16 v12, 0x0

    .line 161
    :cond_74
    :goto_74
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long/2addr v10, v14

    .line 163
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long/2addr v12, v14

    .line 165
    if-gez v2, :cond_115

    .line 166
    const/16 v18, 0x0

    move/from16 v28, v18

    move/from16 v18, v5

    move/from16 v5, v28

    .local v5, "i":I
    .local v18, "finalBatchIndex":I
    :goto_84
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_107

    .line 167
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 171
    .local v4, "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v14, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v14, v14, v12

    if-gez v14, :cond_a3

    .line 172
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    goto :goto_fe

    .line 174
    :cond_a3
    iget-wide v14, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v14, v14, v10

    if-lez v14, :cond_ae

    .line 175
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    goto :goto_10b

    .line 177
    :cond_ae
    iget-object v14, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    invoke-direct {v0, v4, v14}, Lcom/android/server/AlarmOptimizeStrategy;->findWakeUpAlarm(Lcom/android/server/AlarmManagerService$Batch;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v14

    .line 178
    .local v14, "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v14, :cond_f8

    .line 179
    move/from16 v18, v5

    .line 180
    move-wide/from16 v20, v6

    .end local v6  # "duration":J
    .local v20, "duration":J
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->originwhenElapsed:J

    .line 181
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->originmaxWhenElapsed:J

    .line 184
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    move-wide/from16 v22, v12

    .end local v12  # "startSearchSpan":J
    .local v22, "startSearchSpan":J
    iget-wide v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_cf

    iget-wide v6, v14, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_d4

    :cond_cf
    iget-wide v6, v14, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 185
    .local v6, "finalWhen":J
    :goto_d4
    iget-wide v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v24, v14

    .end local v14  # "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v24, "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v12, v14

    add-long/2addr v12, v6

    iput-wide v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 186
    iput-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 188
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->tiggerTimeAdjusted:Z

    .line 189
    iget v13, v0, Lcom/android/server/AlarmOptimizeStrategy;->mAlignCount:I

    add-int/2addr v13, v12

    iput v13, v0, Lcom/android/server/AlarmOptimizeStrategy;->mAlignCount:I

    .line 190
    iget v13, v0, Lcom/android/server/AlarmOptimizeStrategy;->mReduceBatchCount:I

    add-int/2addr v13, v12

    iput v13, v0, Lcom/android/server/AlarmOptimizeStrategy;->mReduceBatchCount:I

    .line 196
    iget-wide v12, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    sub-long v12, v8, v12

    .line 197
    .end local v20  # "duration":J
    .local v12, "duration":J
    cmp-long v14, v12, v16

    if-gtz v14, :cond_f6

    .line 198
    return v18

    .line 197
    :cond_f6
    move-wide v6, v12

    goto :goto_100

    .line 178
    .end local v22  # "startSearchSpan":J
    .end local v24  # "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v6, "duration":J
    .local v12, "startSearchSpan":J
    .restart local v14  # "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_f8
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    move-object/from16 v24, v14

    .line 166
    .end local v4  # "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14  # "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_fe
    move-wide/from16 v6, v20

    .end local v12  # "startSearchSpan":J
    .restart local v22  # "startSearchSpan":J
    :goto_100
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v12, v22

    const/4 v4, 0x1

    goto/16 :goto_84

    .end local v22  # "startSearchSpan":J
    .restart local v12  # "startSearchSpan":J
    :cond_107
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    .end local v5  # "i":I
    .end local v6  # "duration":J
    .end local v12  # "startSearchSpan":J
    .restart local v20  # "duration":J
    .restart local v22  # "startSearchSpan":J
    :goto_10b
    move-wide/from16 v26, v8

    move/from16 v16, v18

    move-wide/from16 v24, v20

    move/from16 v20, v3

    goto/16 :goto_208

    .line 204
    .end local v18  # "finalBatchIndex":I
    .end local v20  # "duration":J
    .end local v22  # "startSearchSpan":J
    .local v5, "finalBatchIndex":I
    .restart local v6  # "duration":J
    .restart local v12  # "startSearchSpan":J
    :cond_115
    move-wide/from16 v22, v12

    .end local v12  # "startSearchSpan":J
    .restart local v22  # "startSearchSpan":J
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 205
    .local v4, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v12, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    invoke-direct {v0, v4, v12}, Lcom/android/server/AlarmOptimizeStrategy;->findWakeUpAlarm(Lcom/android/server/AlarmManagerService$Batch;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v12

    if-eqz v12, :cond_12a

    .line 206
    return v2

    .line 208
    :cond_12a
    const/4 v12, 0x0

    .line 209
    .local v12, "earlyAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v13, 0x0

    .line 210
    .local v13, "laterAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v14, 0x0

    .local v14, "earlyBatchIndex":I
    const/4 v15, 0x0

    .line 214
    .local v15, "laterBatchIndex":I
    add-int/lit8 v18, v2, 0x1

    move/from16 v20, v3

    move/from16 v3, v18

    .local v3, "i":I
    .local v20, "match":Z
    :goto_134
    move-object/from16 v18, v4

    .end local v4  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v18, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_165

    .line 215
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 216
    .local v4, "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v24, v6

    .end local v6  # "duration":J
    .local v24, "duration":J
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_153

    .line 217
    goto :goto_167

    .line 219
    :cond_153
    iget-object v6, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    invoke-direct {v0, v4, v6}, Lcom/android/server/AlarmOptimizeStrategy;->findWakeUpAlarm(Lcom/android/server/AlarmManagerService$Batch;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    .line 220
    .local v6, "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v6, :cond_15e

    .line 221
    move-object v13, v6

    .line 222
    move v15, v3

    .line 223
    goto :goto_167

    .line 214
    :cond_15e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v18

    move-wide/from16 v6, v24

    goto :goto_134

    .end local v4  # "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v24  # "duration":J
    .local v6, "duration":J
    :cond_165
    move-wide/from16 v24, v6

    .line 228
    .end local v3  # "i":I
    .end local v6  # "duration":J
    .restart local v24  # "duration":J
    :goto_167
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v16

    if-lez v3, :cond_16f

    if-nez v13, :cond_192

    .line 229
    :cond_16f
    add-int/lit8 v3, v2, -0x1

    .restart local v3  # "i":I
    :goto_171
    if-ltz v3, :cond_192

    .line 230
    iget-object v4, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 231
    .restart local v4  # "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_184

    .line 232
    goto :goto_192

    .line 234
    :cond_184
    iget-object v6, v0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    invoke-direct {v0, v4, v6}, Lcom/android/server/AlarmOptimizeStrategy;->findWakeUpAlarm(Lcom/android/server/AlarmManagerService$Batch;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    .line 235
    .local v6, "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v6, :cond_18f

    .line 236
    move-object v12, v6

    .line 237
    move v14, v3

    .line 238
    goto :goto_192

    .line 229
    :cond_18f
    add-int/lit8 v3, v3, -0x1

    goto :goto_171

    .line 243
    .end local v3  # "i":I
    .end local v4  # "tempBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v6  # "tempAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_192
    :goto_192
    const/4 v3, 0x0

    .line 244
    .local v3, "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v12, :cond_198

    if-nez v13, :cond_198

    .line 245
    return v5

    .line 246
    :cond_198
    if-eqz v12, :cond_19f

    if-nez v13, :cond_19f

    .line 247
    move v4, v14

    .line 248
    .end local v5  # "finalBatchIndex":I
    .local v4, "finalBatchIndex":I
    move-object v3, v12

    goto :goto_1c6

    .line 249
    .end local v4  # "finalBatchIndex":I
    .restart local v5  # "finalBatchIndex":I
    :cond_19f
    if-nez v12, :cond_1a6

    if-eqz v13, :cond_1a6

    .line 250
    move v4, v15

    .line 251
    .end local v5  # "finalBatchIndex":I
    .restart local v4  # "finalBatchIndex":I
    move-object v3, v13

    goto :goto_1c6

    .line 253
    .end local v4  # "finalBatchIndex":I
    .restart local v5  # "finalBatchIndex":I
    :cond_1a6
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object v4, v3

    .end local v3  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v4, "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v2, v12, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v17, v4

    move/from16 v16, v5

    .end local v4  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5  # "finalBatchIndex":I
    .local v16, "finalBatchIndex":I
    .local v17, "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c4

    .line 254
    move-object v3, v13

    .line 255
    .end local v17  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v3  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    move v4, v15

    .end local v16  # "finalBatchIndex":I
    .local v4, "finalBatchIndex":I
    goto :goto_1c6

    .line 257
    .end local v3  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v4  # "finalBatchIndex":I
    .restart local v16  # "finalBatchIndex":I
    .restart local v17  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1c4
    move-object v3, v12

    .line 258
    .end local v17  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v3  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    move v4, v14

    .line 261
    .end local v16  # "finalBatchIndex":I
    .restart local v4  # "finalBatchIndex":I
    :goto_1c6
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->originwhenElapsed:J

    .line 262
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->originmaxWhenElapsed:J

    .line 265
    iget-object v2, v0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 266
    .local v2, "finalBatch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    move-wide/from16 v26, v8

    .end local v8  # "whenElapsed":J
    .local v26, "whenElapsed":J
    iget-wide v7, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1e5

    iget-wide v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_1ea

    :cond_1e5
    iget-wide v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 267
    .local v5, "finalWhen":J
    :goto_1ea
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v16, v2

    move-object v9, v3

    .end local v2  # "finalBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v9, "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v16, "finalBatch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v7, v2

    add-long/2addr v7, v5

    iput-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 268
    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 270
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->tiggerTimeAdjusted:Z

    .line 271
    iget v3, v0, Lcom/android/server/AlarmOptimizeStrategy;->mAlignCount:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/AlarmOptimizeStrategy;->mAlignCount:I

    .line 275
    return v4

    .line 144
    .end local v4  # "finalBatchIndex":I
    .end local v9  # "finalAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10  # "searchSpan":J
    .end local v12  # "earlyAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13  # "laterAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14  # "earlyBatchIndex":I
    .end local v15  # "laterBatchIndex":I
    .end local v16  # "finalBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v18  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v20  # "match":Z
    .end local v22  # "startSearchSpan":J
    .end local v24  # "duration":J
    .end local v26  # "whenElapsed":J
    .local v3, "match":Z
    .local v5, "finalBatchIndex":I
    .local v6, "duration":J
    .restart local v8  # "whenElapsed":J
    :cond_200
    move/from16 v20, v3

    move/from16 v16, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    .line 280
    .end local v3  # "match":Z
    .end local v5  # "finalBatchIndex":I
    .end local v6  # "duration":J
    .end local v8  # "whenElapsed":J
    .local v16, "finalBatchIndex":I
    .restart local v20  # "match":Z
    .restart local v24  # "duration":J
    .restart local v26  # "whenElapsed":J
    :goto_208
    return v16
.end method

.method public disableAlarmOptimize(Z)V
    .registers 4
    .param p1, "disable"  # Z

    .line 296
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    monitor-enter v0

    .line 297
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mDisableAlarmOptimize:Z

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 405
    const-string v0, "AlarmOptimizeStrategy  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableAlarmOptimize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mDisableAlarmOptimize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTargetAlignPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mTargetAlignPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAlignCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mAlignCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReduceBatchCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mReduceBatchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public isDisableAlarmOptimize()Z
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy;->mService:Lcom/android/server/AlarmManagerService;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AlarmOptimizeStrategy;->mDisableAlarmOptimize:Z

    monitor-exit v0

    return v1

    .line 309
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
