.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;,
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    }
.end annotation


# static fields
.field private static final BACKGROUND_JOBS_DELAY:J = 0xbb8L

.field private static final DEBUG:Z

.field static final PROCESS_BACKGROUND_JOBS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdle"


# instance fields
.field private final mAllowInIdleJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceIdleMode:Z

.field private final mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

.field private mDeviceIdleWhitelistAppIds:[I

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

.field private final mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveTempWhitelistAppIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 54
    const-string v1, "JobScheduler.DeviceIdle"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 8

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 79
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 124
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 125
    const-class p1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 126
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 127
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 128
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 129
    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 130
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 131
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 132
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 133
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string p1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string p1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string p1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string p1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 51
    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    return-object p0
.end method

.method private updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7

    .line 207
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 208
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 209
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 210
    iget-boolean v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eqz v4, :cond_2d

    if-nez v3, :cond_2d

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 211
    :cond_2d
    :goto_2d
    invoke-virtual {p1, v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeviceNotDozingConstraintSatisfied(ZZ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 260
    const-wide v0, 0x10b00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 262
    iget-boolean v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$JMszgdQK87AK2bjaiI_rwQuTKpc;

    invoke-direct {v3, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$JMszgdQK87AK2bjaiI_rwQuTKpc;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, p4, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 281
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 282
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 236
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 203
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 202
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    return p1
.end method

.method isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 194
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public synthetic lambda$dumpControllerStateLocked$0$DeviceIdleJobsController(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 237
    const-string v0, "#"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 239
    const-string v0, " from "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 241
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    nop

    .line 244
    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 245
    const-string v0, " RUNNABLE"

    goto :goto_2d

    :cond_2b
    const-string v0, " WAITING"

    .line 243
    :goto_2d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v0, :cond_39

    .line 247
    const-string v0, " WHITELISTED"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    :cond_39
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 250
    const-string p2, " ALLOWED_IN_DOZE"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    :cond_46
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 253
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$1$DeviceIdleJobsController(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 265
    nop

    .line 266
    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 268
    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 269
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 270
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 271
    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 274
    const-wide v2, 0x10800000005L

    iget-boolean v4, p2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 275
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 277
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 278
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 216
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    .line 217
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 220
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 225
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    .line 226
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_d
    return-void
.end method

.method public setUidActiveLocked(IZ)V
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 176
    :goto_c
    if-nez v0, :cond_f

    .line 177
    return-void

    .line 179
    :cond_f
    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " going "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2b

    const-string v2, "active"

    goto :goto_2d

    :cond_2b
    const-string v2, "inactive"

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler.DeviceIdle"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_39
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 183
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iput-boolean v1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChanged:Z

    .line 184
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 185
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iget-boolean p1, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChanged:Z

    if-eqz p1, :cond_58

    .line 186
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 188
    :cond_58
    return-void
.end method

.method updateIdleMode(Z)V
    .registers 9

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_c

    .line 146
    move v1, v3

    goto :goto_d

    .line 145
    :cond_c
    move v1, v2

    .line 148
    :goto_d
    iput-boolean p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 149
    sget-boolean v4, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v4, :cond_2b

    const-string v4, "JobScheduler.DeviceIdle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDeviceIdleMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2b
    if-eqz p1, :cond_3e

    .line 151
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->removeMessages(I)V

    .line 152
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    goto :goto_6a

    .line 156
    :cond_3e
    nop

    :goto_3f
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_63

    .line 157
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 158
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 159
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 158
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 156
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 162
    :cond_63
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_4 .. :try_end_6b} :catchall_73

    .line 166
    if-eqz v1, :cond_72

    .line 167
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/job/StateChangedListener;->onDeviceIdleStateChanged(Z)V

    .line 169
    :cond_72
    return-void

    .line 164
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1
.end method
