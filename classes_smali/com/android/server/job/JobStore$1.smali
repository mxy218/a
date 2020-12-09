.class Lcom/android/server/job/JobStore$1;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "jobid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 478
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sourcePackageName"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 481
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sourceTag"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    :cond_49
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sourceUserId"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "priority"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    if-eqz v0, :cond_93

    .line 488
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "internalFlags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    :cond_93
    nop

    .line 492
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v2, "lastSuccessfulRunTime"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    nop

    .line 494
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 493
    const-string v0, "lastFailedRunTime"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    return-void
.end method

.method private deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .registers 7

    .line 506
    if-gtz p2, :cond_4

    .line 507
    const/4 p1, 0x0

    return-object p1

    .line 509
    :cond_4
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 510
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 511
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 513
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_31

    .line 514
    check-cast v2, Landroid/os/PersistableBundle;

    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 517
    :cond_31
    goto :goto_12

    .line 518
    :cond_32
    return-object v0
.end method

.method static synthetic lambda$run$0(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 397
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 398
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_e
    return-void
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 499
    const-string v0, "extras"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const/16 v2, 0xa

    invoke-direct {p0, p1, v2}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 501
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 502
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const-string v0, "constraints"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 528
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 529
    iget-object v3, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 530
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    .line 529
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "net-capabilities"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    iget-object v3, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 532
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    .line 531
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "net-unwanted-capabilities"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 535
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    .line 534
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    :cond_50
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_60

    .line 538
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "idle"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    :cond_60
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 541
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "charging"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    :cond_6f
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 544
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "battery-not-low"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    :cond_7e
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 547
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "storage-not-low"

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    :cond_8e
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 555
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    const-string/jumbo v2, "periodic"

    const-string/jumbo v3, "one-off"

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    .line 556
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "period"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "flex"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    .line 560
    :cond_34
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    :goto_37
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v1

    .line 567
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5a

    if-eqz v1, :cond_5a

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storing original UTC timestamps for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JobStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_5a
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 572
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 573
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 575
    if-nez v1, :cond_75

    .line 576
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v9

    sub-long/2addr v9, v7

    add-long/2addr v9, v5

    goto :goto_7d

    .line 577
    :cond_75
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 578
    :goto_7d
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "deadline"

    invoke-interface {p1, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    :cond_86
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 581
    if-nez v1, :cond_95

    .line 582
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    add-long/2addr v5, v9

    goto :goto_9d

    .line 583
    :cond_95
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 584
    :goto_9d
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "delay"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    :cond_a6
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-nez v1, :cond_bf

    .line 591
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_d9

    .line 592
    :cond_bf
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "backoff-policy"

    invoke-interface {p1, v4, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "initial-backoff"

    invoke-interface {p1, v4, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    :cond_d9
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 596
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e6

    .line 598
    :cond_e3
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    :goto_e6
    return-void
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 414
    move-object/from16 v1, p0

    const-string v0, "job"

    const-string v2, "job-info"

    const-string v3, "JobStore"

    .line 415
    nop

    .line 416
    nop

    .line 418
    const/4 v4, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 419
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 421
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 422
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 425
    invoke-interface {v8, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string/jumbo v9, "version"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3d} :catch_f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_3d} :catch_e7
    .catchall {:try_start_b .. :try_end_3d} :catchall_e2

    .line 427
    move v9, v4

    move v10, v9

    move v12, v10

    :goto_40
    :try_start_40
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_a0

    .line 428
    move-object/from16 v13, p1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    .line 429
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v15

    if-eqz v15, :cond_6c

    .line 430
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saving job "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_6c
    const/4 v11, 0x0

    invoke-interface {v8, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    invoke-direct {v1, v8, v14}, Lcom/android/server/job/JobStore$1;->addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 434
    invoke-direct {v1, v8, v14}, Lcom/android/server/job/JobStore$1;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 435
    invoke-direct {v1, v8, v14}, Lcom/android/server/job/JobStore$1;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 436
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-direct {v1, v11, v8}, Lcom/android/server/job/JobStore$1;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 437
    const/4 v11, 0x0

    invoke-interface {v8, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    add-int/lit8 v9, v9, 0x1

    .line 440
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v15, 0x3e8

    if-ne v11, v15, :cond_9c

    .line 441
    add-int/lit8 v10, v10, 0x1

    .line 442
    invoke-static {v14}, Lcom/android/server/job/JobStore;->access$300(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 443
    add-int/lit8 v12, v12, 0x1

    .line 427
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x0

    goto :goto_40

    .line 447
    :cond_a0
    const/4 v0, 0x0

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 451
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 452
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 453
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_c1} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_c1} :catch_dc
    .catchall {:try_start_40 .. :try_end_c1} :catchall_da

    .line 463
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 464
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v10, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 465
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v12, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    goto :goto_11c

    .line 463
    :catchall_da
    move-exception v0

    goto :goto_120

    .line 458
    :catch_dc
    move-exception v0

    move v4, v12

    goto :goto_ea

    .line 454
    :catch_df
    move-exception v0

    move v4, v12

    goto :goto_f9

    .line 463
    :catchall_e2
    move-exception v0

    move v9, v4

    move v10, v9

    move v12, v10

    goto :goto_120

    .line 458
    :catch_e7
    move-exception v0

    move v9, v4

    move v10, v9

    .line 459
    :goto_ea
    :try_start_ea
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 460
    const-string v2, "Error persisting bundle."

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_104

    .line 454
    :catch_f6
    move-exception v0

    move v9, v4

    move v10, v9

    .line 455
    :goto_f9
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 456
    const-string v2, "Error writing out job data."

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_ea .. :try_end_104} :catchall_11e

    .line 463
    :cond_104
    :goto_104
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 464
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v10, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 465
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v4, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 466
    :goto_11c
    nop

    .line 467
    return-void

    .line 463
    :catchall_11e
    move-exception v0

    move v12, v4

    :goto_120
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v9, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 464
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v10, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 465
    iget-object v1, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v12, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 382
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_10
    iget-object v4, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/job/JobStore;->access$002(Lcom/android/server/job/JobStore;Z)Z

    .line 393
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_6f

    .line 394
    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v3, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 396
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;

    invoke-direct {v7, v2}, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v6, v7}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 401
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_6c

    .line 402
    invoke-direct {p0, v2}, Lcom/android/server/job/JobStore$1;->writeJobsMapImpl(Ljava/util/List;)V

    .line 403
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished writing, took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_56
    iget-object v0, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1, v5}, Lcom/android/server/job/JobStore;->access$202(Lcom/android/server/job/JobStore;Z)Z

    .line 409
    iget-object v1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_69

    throw v1

    .line 401
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0

    .line 393
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0
.end method
