.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KNOWN_ACTIVE:I = 0x1

.field static final KNOWN_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Background"

.field static final UNKNOWN:I


# instance fields
.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 50
    const-string v1, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 229
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 62
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 63
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 62
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 64
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method private updateAllJobRestrictionsLocked()V
    .registers 3

    .line 155
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 156
    return-void
.end method

.method private updateJobRestrictionsForUidLocked(IZ)V
    .registers 3

    .line 159
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 160
    return-void
.end method

.method private updateJobRestrictionsLocked(II)V
    .registers 8

    .line 163
    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;I)V

    .line 165
    sget-boolean p2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    goto :goto_11

    :cond_10
    move-wide v3, v1

    .line 167
    :goto_11
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object p2

    .line 168
    if-lez p1, :cond_1d

    .line 169
    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_20

    .line 171
    :cond_1d
    invoke-virtual {p2, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 174
    :goto_20
    sget-boolean p1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz p1, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    sub-long v1, p1, v3

    .line 175
    :cond_2a
    sget-boolean p1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz p1, :cond_58

    .line 176
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget v3, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x1

    iget v3, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, p2

    .line 176
    const-string p2, "Job status updated: %d/%d checked/total jobs, %d us"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Background"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_58
    iget-boolean p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    if-eqz p1, :cond_61

    .line 185
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 187
    :cond_61
    return-void
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

    .line 114
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 115
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 117
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 120
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0, p4, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 150
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 152
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

    .line 80
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 109
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$0$BackgroundJobsController(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 84
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 85
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 88
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 90
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " active"

    goto :goto_25

    :cond_23
    const-string v2, " idle"

    :goto_25
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 92
    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 93
    :cond_38
    const-string v2, ", whitelisted"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 95
    :cond_3d
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 100
    const-string v0, "allowed]"

    goto :goto_57

    :cond_55
    const-string v0, "disallowed]"

    .line 99
    :goto_57
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget p2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p2, v0

    if-eqz p2, :cond_67

    .line 104
    const-string p2, " RUNNABLE"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6c

    .line 106
    :cond_67
    const-string p2, " WAITING"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    :goto_6c
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$1$BackgroundJobsController(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 12

    .line 121
    nop

    .line 122
    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 124
    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 126
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 127
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 128
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 132
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v4

    .line 131
    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 133
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 134
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 135
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_4d

    :cond_4b
    move v4, v5

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v4, v6

    .line 133
    :goto_4e
    const-wide v7, 0x10800000005L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 137
    const-wide v7, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 139
    invoke-virtual {v4, v2, v3}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v2

    .line 137
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 142
    const-wide v2, 0x10800000007L

    iget p2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v4, 0x400000

    and-int/2addr p2, v4

    if-eqz p2, :cond_71

    move v5, v6

    :cond_71
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 148
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 69
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 70
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 75
    return-void
.end method

.method updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 9

    .line 191
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 192
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    move v3, v5

    .line 194
    :goto_16
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AppStateTracker;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v1

    .line 199
    xor-int/2addr v1, v4

    if-nez p2, :cond_24

    .line 200
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {p2, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result p2

    goto :goto_29

    .line 202
    :cond_24
    if-ne p2, v4, :cond_28

    move p2, v4

    goto :goto_29

    :cond_28
    move p2, v5

    .line 204
    :goto_29
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(Z)Z

    move-result v0

    .line 205
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result p1

    or-int/2addr p1, v0

    .line 206
    return p1
.end method
