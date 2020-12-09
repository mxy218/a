.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Battery"


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 49
    const-string v1, "JobScheduler.Battery"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 51
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 61
    new-instance p1, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 62
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method private maybeReportNewChargingStateLocked()V
    .registers 8

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    .line 85
    sget-boolean v2, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_26

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Battery"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_26
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_2f
    if-ltz v3, :cond_4a

    .line 90
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 91
    invoke-virtual {v5, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    move-result v6

    .line 92
    if-eq v6, v0, :cond_40

    .line 93
    move v2, v4

    .line 95
    :cond_40
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    move-result v5

    .line 96
    if-eq v5, v1, :cond_47

    .line 97
    move v2, v4

    .line 89
    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 100
    :cond_4a
    if-nez v0, :cond_57

    if-eqz v1, :cond_4f

    goto :goto_57

    .line 103
    :cond_4f
    if-eqz v2, :cond_5d

    .line 106
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_5d

    .line 102
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 108
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 13
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

    .line 254
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 255
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 257
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 258
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v2

    .line 257
    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 259
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 260
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v2

    .line 259
    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 262
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 263
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v2

    .line 262
    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 265
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v2

    .line 264
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 267
    const/4 v2, 0x0

    :goto_46
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 268
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 269
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 270
    goto :goto_7d

    .line 272
    :cond_5d
    const-wide v4, 0x20b00000005L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 273
    const-wide v6, 0x10b00000001L

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 274
    const-wide v6, 0x10500000002L

    .line 275
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 274
    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 276
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 267
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 279
    :cond_80
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 280
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 281
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 233
    const-string v0, "MONITORING: seq="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 236
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 238
    const/4 v0, 0x0

    :goto_4e
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 239
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 240
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 241
    goto :goto_7c

    .line 243
    :cond_65
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 245
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 238
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 249
    :cond_7f
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 67
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 68
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 70
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    .line 71
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    .line 73
    :cond_21
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 77
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 78
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_c
    return-void
.end method
