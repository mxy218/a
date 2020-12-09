.class Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobCountTracker"
.end annotation


# instance fields
.field private mConfigNumMaxBgJobs:I

.field private mConfigNumMaxTotalJobs:I

.field private mConfigNumMinBgJobs:I

.field private mNumActualMaxBgJobs:I

.field private mNumActualMaxFgJobs:I

.field private mNumPendingBgJobs:I

.field private mNumPendingFgJobs:I

.field private mNumReservedForBg:I

.field private mNumRunningBgJobs:I

.field private mNumRunningFgJobs:I

.field private mNumStartingBgJobs:I

.field private mNumStartingFgJobs:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method canJobStart(Z)Z
    .registers 5

    .line 638
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 639
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    if-ge p1, v2, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    return v0

    .line 641
    :cond_10
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    if-ge p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 707
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 709
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 710
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 711
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 713
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 714
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 716
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 717
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 719
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 720
    return-void
.end method

.method getFgRunningJobCountToNote()I
    .registers 3

    .line 659
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNumStartingBgJobs()I
    .registers 2

    .line 650
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    return v0
.end method

.method public getNumStartingFgJobs()I
    .registers 2

    .line 646
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    return v0
.end method

.method getTotalRunningJobCountToNote()I
    .registers 3

    .line 654
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v0, v1

    return v0
.end method

.method incrementPendingJobCount(Z)V
    .registers 2

    .line 583
    if-eqz p1, :cond_9

    .line 584
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    goto :goto_f

    .line 586
    :cond_9
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    .line 588
    :goto_f
    return-void
.end method

.method incrementRunningJobCount(Z)V
    .registers 2

    .line 575
    if-eqz p1, :cond_9

    .line 576
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    goto :goto_f

    .line 578
    :cond_9
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    .line 580
    :goto_f
    return-void
.end method

.method logStatus()V
    .registers 3

    .line 663
    invoke-static {}, Lcom/android/server/job/JobConcurrencyManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assignJobsToContexts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1c
    return-void
.end method

.method onCountDone()V
    .registers 4

    .line 605
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 610
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    .line 615
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    .line 616
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    .line 620
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    .line 625
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 632
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    .line 635
    return-void
.end method

.method onStartingNewJob(Z)V
    .registers 2

    .line 591
    if-eqz p1, :cond_9

    .line 592
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    goto :goto_f

    .line 594
    :cond_9
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    .line 596
    :goto_f
    return-void
.end method

.method reset(III)V
    .registers 4

    .line 556
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    .line 557
    iput p2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    .line 558
    iput p3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    .line 560
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    .line 561
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    .line 563
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    .line 564
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    .line 566
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    .line 567
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    .line 569
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    .line 570
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    .line 571
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    .line 572
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 669
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    .line 670
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v1, v2

    .line 671
    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    .line 679
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    .line 680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    .line 681
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/2addr v3, v4

    .line 684
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    .line 686
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v3, v4

    .line 687
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    .line 689
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    const-string v4, ""

    const-string v5, "*"

    if-gt v0, v3, :cond_7a

    move-object v3, v4

    goto :goto_7b

    :cond_7a
    move-object v3, v5

    :goto_7b
    const/16 v6, 0xa

    aput-object v3, v2, v6

    const/16 v3, 0xb

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    .line 690
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0xc

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    if-gt v1, v6, :cond_91

    move-object v6, v4

    goto :goto_92

    :cond_91
    move-object v6, v5

    :goto_92
    aput-object v6, v2, v3

    const/16 v3, 0xd

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    add-int/2addr v6, v7

    .line 692
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0xe

    .line 693
    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    if-gt v6, v7, :cond_ae

    .line 694
    move-object v6, v4

    goto :goto_af

    :cond_ae
    move-object v6, v5

    :goto_af
    aput-object v6, v2, v3

    const/16 v3, 0xf

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    .line 696
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x10

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    .line 698
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x11

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x12

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x13

    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x14

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    if-gt v0, v6, :cond_ec

    move-object v6, v4

    goto :goto_ed

    :cond_ec
    move-object v6, v5

    :goto_ed
    aput-object v6, v2, v3

    const/16 v3, 0x15

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x16

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    if-gt v1, v6, :cond_ff

    move-object v6, v4

    goto :goto_100

    :cond_ff
    move-object v6, v5

    :goto_100
    aput-object v6, v2, v3

    const/16 v3, 0x17

    add-int/2addr v0, v1

    .line 702
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    if-gt v0, v3, :cond_112

    goto :goto_113

    :cond_112
    move-object v4, v5

    :goto_113
    aput-object v4, v2, v1

    .line 671
    const-string v0, "Config={tot=%d bg min/max=%d/%d} Running[FG/BG (total)]: %d / %d (%d) Pending: %d / %d (%d) Actual max: %d%s / %d%s (%d%s) Res BG: %d Starting: %d / %d (%d) Total: %d%s / %d%s (%d%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
