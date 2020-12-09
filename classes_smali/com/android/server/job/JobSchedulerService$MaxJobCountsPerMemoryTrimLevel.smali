.class Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxJobCountsPerMemoryTrimLevel"
.end annotation


# instance fields
.field public final critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;)V
    .registers 5

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 417
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 418
    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 419
    iput-object p4, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 420
    return-void
.end method


# virtual methods
.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 423
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 424
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 425
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 426
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 427
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 428
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 429
    return-void
.end method
