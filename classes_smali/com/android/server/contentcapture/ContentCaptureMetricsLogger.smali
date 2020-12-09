.class public final Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;
.super Ljava/lang/Object;
.source "ContentCaptureMetricsLogger.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;)V
    .registers 3

    .line 57
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 3

    .line 45
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 38
    const/16 v0, 0xcf

    invoke-static {v0, p0, p1, p2}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 13

    .line 90
    nop

    .line 91
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {p4}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 90
    const/16 v0, 0xd0

    move v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/util/StatsLog;->write(IIIILjava/lang/String;Ljava/lang/String;Z)I

    .line 93
    return-void
.end method

.method public static writeSessionFlush(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 19

    .line 99
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 100
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {p2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    iget v5, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    iget v6, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    iget v9, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget v10, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    iget v11, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 99
    const/16 v0, 0xd1

    move v1, p0

    move/from16 v12, p5

    invoke-static/range {v0 .. v12}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)I

    .line 105
    return-void
.end method

.method public static writeSetWhitelistEvent(Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const/4 v1, 0x0

    const-string v2, " "

    const/4 v3, 0x1

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move v5, v3

    :goto_23
    if-ge v5, v4, :cond_34

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 73
    :cond_34
    if-eqz p2, :cond_66

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_66

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 77
    nop

    :goto_51
    if-ge v3, p1, :cond_66

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 82
    :cond_66
    const/16 p1, 0xcf

    const/4 p2, 0x3

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p1, p2, p0, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
