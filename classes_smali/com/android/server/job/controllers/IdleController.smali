.class public final Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.IdleController"


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

.field final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 40
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 45
    iget-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initIdleStateTracking(Landroid/content/Context;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 88
    if-eqz v0, :cond_16

    .line 89
    new-instance v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;

    invoke-direct {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    goto :goto_1d

    .line 91
    :cond_16
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    invoke-direct {v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 93
    :goto_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0, p1, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V

    .line 94
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

    .line 119
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 120
    const-wide v0, 0x10b00000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v2}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v2

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 124
    const/4 v2, 0x0

    :goto_1c
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 125
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 126
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 127
    goto :goto_53

    .line 129
    :cond_33
    const-wide v4, 0x20b00000002L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 130
    const-wide v6, 0x10b00000001L

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 131
    const-wide v6, 0x10500000002L

    .line 132
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 131
    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 133
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 124
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 136
    :cond_56
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 137
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 138
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

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "Idleness tracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 103
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 104
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 105
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 106
    goto :goto_56

    .line 108
    :cond_3f
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 110
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 103
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 114
    :cond_59
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 53
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 54
    iget-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 56
    iget-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {p2}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 58
    :cond_19
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 63
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 64
    iget-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_d
    return-void
.end method

.method public reportNewIdleState(Z)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 75
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 74
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 77
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 78
    iget-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 79
    return-void

    .line 77
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
