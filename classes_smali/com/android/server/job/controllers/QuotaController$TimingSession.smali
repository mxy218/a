.class final Lcom/android/server/job/controllers/QuotaController$TimingSession;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimingSession"
.end annotation


# instance fields
.field public final bgJobCount:I

.field public final endTimeElapsed:J

.field private final mHashCode:I

.field public final startTimeElapsed:J


# direct methods
.method constructor <init>(JJI)V
    .registers 6

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1508
    iput-wide p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 1509
    iput p5, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 1511
    nop

    .line 1512
    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result p1

    const/4 p2, 0x0

    add-int/2addr p2, p1

    .line 1513
    mul-int/lit8 p2, p2, 0x1f

    iget-wide p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-static {p3, p4}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result p1

    add-int/2addr p2, p1

    .line 1514
    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p5

    .line 1515
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    .line 1516
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1554
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1556
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1558
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1560
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1563
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1564
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 1542
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1543
    const-string v0, " -> "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1545
    const-string v0, " ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1547
    const-string v0, "), "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1549
    const-string v0, " bg jobs."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1551
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1526
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1527
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1528
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    if-ne v0, p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 1532
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1538
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
