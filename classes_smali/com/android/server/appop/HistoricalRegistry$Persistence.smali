.class final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Persistence"
.end annotation


# static fields
.field private static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field private static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field private static final ATTR_NAME:Ljava/lang/String; = "na"

.field private static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field private static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field private static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG_OP:Ljava/lang/String; = "op"

.field private static final TAG_OPS:Ljava/lang/String; = "ops"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_STATE:Ljava/lang/String; = "st"

.field private static final TAG_UID:Ljava/lang/String; = "uid"

.field private static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field private final mBaseSnapshotInterval:J

.field private final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 691
    const-class v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    .line 719
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 720
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 719
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 5

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 716
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 717
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V
    .registers 10

    .line 688
    invoke-direct/range {p0 .. p9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    .line 688
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static clearHistoryDLocked()V
    .registers 1

    .line 744
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 745
    return-void
.end method

.method private collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 847
    nop

    .line 849
    const/4 v1, 0x0

    :try_start_2
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v16
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    .line 855
    :try_start_8
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v15

    .line 856
    const/4 v0, 0x1

    new-array v12, v0, [J

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v12, v0

    .line 857
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-direct/range {v2 .. v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 864
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    .line 865
    return-object v0

    .line 866
    :catchall_30
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_36

    :catchall_34
    move-exception v0

    move-object v2, v1

    .line 867
    :goto_36
    const-string v3, "Error reading historical app ops. Deleting history."

    invoke-static {v3, v0, v2}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 868
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 870
    return-object v1
.end method

.method private collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V
    .registers 19

    .line 832
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_23

    .line 836
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 837
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_23

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 839
    move-object v4, p1

    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 842
    :cond_23
    return-void
.end method

.method private collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v4, p12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p12

    move-object/from16 v16, p13

    .line 881
    iget-wide v2, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v9, v4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v9, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v17, v2, v9

    move-wide/from16 v2, v17

    .line 883
    iget-wide v9, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v9, v9

    add-int/lit8 v12, v4, 0x1

    int-to-double v4, v12

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v9, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v9, v4

    move-wide v4, v9

    .line 886
    move-wide/from16 v19, v9

    sub-long v9, p5, v17

    move/from16 p12, v12

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-wide/from16 v11, v19

    move-wide/from16 v9, v21

    .line 887
    sub-long v17, p7, v17

    move/from16 v19, p12

    move-wide/from16 v23, v11

    move-wide/from16 v11, v17

    .line 890
    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v14

    .line 896
    if-eqz v14, :cond_59

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 897
    return-object p11

    .line 901
    :cond_59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, v21

    move-wide/from16 v7, v17

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, v19

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_8c

    .line 908
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 909
    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_8c

    .line 910
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 911
    move-wide/from16 v4, v23

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 909
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 915
    :cond_8c
    if-eqz v14, :cond_a9

    .line 916
    if-nez v0, :cond_95

    .line 917
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 920
    :cond_95
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .line 921
    add-int/lit8 v1, v1, -0x1

    :goto_9b
    if-ltz v1, :cond_a9

    .line 922
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v1, v1, -0x1

    goto :goto_9b

    .line 926
    :cond_a9
    return-object v0
.end method

.method private computeGlobalIntervalBeginMillis(I)J
    .registers 9

    .line 1475
    nop

    .line 1476
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_16

    .line 1477
    long-to-double v0, v0

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    double-to-long v0, v0

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1479
    :cond_16
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static enforceOpsWellFormed(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 1444
    if-nez p0, :cond_3

    .line 1445
    return-void

    .line 1448
    :cond_3
    const/4 v0, 0x0

    .line 1449
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1450
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_af

    .line 1451
    nop

    .line 1452
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1453
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    .line 1457
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_79

    .line 1461
    if-eqz v0, :cond_75

    .line 1462
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5a

    .line 1466
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3f

    goto :goto_75

    .line 1467
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non increasing ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intersecting ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_75
    :goto_75
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_9

    .line 1458
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin after end:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_af
    return-void
.end method

.method private generateFile(Ljava/io/File;I)Ljava/io/File;
    .registers 6

    .line 723
    invoke-direct {p0, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 724
    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method private static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1567
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1568
    if-nez p0, :cond_b

    .line 1569
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1571
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1572
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 1573
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1572
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1576
    :cond_21
    return-object v0
.end method

.method private handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 933
    move-object/from16 v15, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    iget-wide v0, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v0, v0

    int-to-double v6, v3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iget-wide v6, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, v6

    .line 935
    iget-wide v6, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    add-int/lit8 v14, v3, 0x1

    int-to-double v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v17, v6, v8

    .line 938
    if-eqz v5, :cond_147

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    move-object v8, v2

    move v2, v3

    move-object v1, v4

    move-object v3, v5

    move/from16 v20, v14

    move-object v0, v15

    goto/16 :goto_14e

    .line 957
    :cond_36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    .line 958
    const/16 v19, 0x0

    move/from16 v7, v19

    :goto_3e
    if-ge v7, v6, :cond_4d

    .line 959
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 960
    neg-long v9, v0

    invoke-virtual {v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 958
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 968
    :cond_4d
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const-wide v11, 0x7fffffffffffffffL

    const/16 v13, 0x1f

    const/16 v16, 0x0

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v21

    move-wide/from16 v4, v17

    move/from16 v15, p5

    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_9c

    .line 981
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 982
    if-lez v1, :cond_99

    .line 984
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 985
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    .line 986
    move/from16 v2, v19

    :goto_8b
    if-ge v2, v1, :cond_9e

    .line 987
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 988
    invoke-virtual {v6, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 982
    :cond_99
    move-object/from16 v3, p3

    goto :goto_9e

    .line 980
    :cond_9c
    move-object/from16 v3, p3

    .line 997
    :cond_9e
    :goto_9e
    nop

    .line 1002
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1003
    if-eqz v0, :cond_a9

    .line 1004
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1012
    :cond_a9
    nop

    .line 1013
    nop

    .line 1023
    const-wide/16 v2, 0x0

    .line 1024
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1025
    const/4 v4, 0x0

    move-wide v5, v2

    move-object v3, v4

    move-object v7, v3

    move/from16 v2, v19

    :goto_b7
    if-ge v2, v0, :cond_11b

    .line 1026
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1029
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v17

    if-gtz v9, :cond_cd

    .line 1030
    nop

    .line 1031
    move-wide v11, v5

    move-wide/from16 v9, v21

    move-object v5, v4

    goto :goto_fc

    .line 1032
    :cond_cd
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v17

    if-gez v9, :cond_f7

    .line 1033
    nop

    .line 1034
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    .line 1035
    move-wide/from16 v9, v21

    cmp-long v11, v5, v9

    if-lez v11, :cond_f4

    .line 1036
    long-to-double v5, v5

    .line 1037
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v5, v11

    .line 1038
    invoke-static {v8, v5, v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    .line 1039
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v17

    .line 1040
    goto :goto_fc

    .line 1041
    :cond_f4
    move-wide v11, v5

    move-object v5, v4

    goto :goto_fc

    .line 1044
    :cond_f7
    move-wide/from16 v9, v21

    .line 1045
    move-wide v11, v5

    move-object v5, v8

    move-object v8, v4

    .line 1047
    :goto_fc
    if-eqz v8, :cond_108

    .line 1048
    if-nez v3, :cond_105

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    :cond_105
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_108
    if-eqz v5, :cond_115

    .line 1054
    if-nez v7, :cond_112

    .line 1055
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    .line 1057
    :cond_112
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_115
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v21, v9

    move-wide v5, v11

    goto :goto_b7

    .line 1066
    :cond_11b
    move-wide/from16 v9, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1067
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, p4

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1069
    if-eqz v3, :cond_138

    .line 1070
    invoke-static {v3, v9, v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1071
    invoke-direct {v0, v3, v5, v6, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    .line 1079
    :cond_138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1081
    return-void

    .line 938
    :cond_147
    move-object v8, v2

    move v2, v3

    move-object v1, v4

    move-object v3, v5

    move/from16 v20, v14

    move-object v0, v15

    .line 939
    :goto_14e
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_182

    .line 941
    move-object/from16 v4, p2

    invoke-direct {v0, v4, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v5

    .line 942
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_173

    .line 943
    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 944
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 946
    :cond_173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 949
    :cond_182
    return-void
.end method

.method private static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1515
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1516
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_68

    .line 1517
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1518
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1520
    add-int/lit8 v6, v0, -0x1

    :goto_1b
    if-ltz v6, :cond_65

    .line 1521
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1522
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v8

    .line 1523
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1524
    cmp-long v10, v8, v4

    if-gtz v10, :cond_35

    .line 1525
    goto :goto_65

    .line 1527
    :cond_35
    long-to-float v8, v8

    .line 1528
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v8, v9

    .line 1529
    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-ltz v9, :cond_4d

    .line 1530
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1531
    add-int/lit8 v0, v0, -0x1

    .line 1532
    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_62

    .line 1534
    :cond_4d
    float-to-double v8, v8

    invoke-static {v7, v8, v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v8

    .line 1536
    if-eqz v8, :cond_57

    .line 1537
    invoke-virtual {v1, v8}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1539
    :cond_57
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1540
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1541
    add-int/lit8 v0, v0, -0x1

    .line 1520
    :cond_62
    :goto_62
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    .line 1516
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1551
    :cond_68
    return-void
.end method

.method private static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1556
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    .line 1557
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1559
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_21

    .line 1560
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1556
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1563
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1269
    move-object/from16 v9, p4

    move-object/from16 v0, p5

    const-string/jumbo v1, "na"

    invoke-static {v9, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 1270
    if-eqz v0, :cond_1c

    .line 1271
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1272
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1273
    const/4 v0, 0x0

    return-object v0

    .line 1275
    :cond_1c
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move-object v12, p1

    .line 1276
    :cond_21
    :goto_21
    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1277
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "st"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1278
    move-object v0, p0

    move-object v1, v12

    move v2, p2

    move-object/from16 v3, p3

    move v4, v10

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1280
    if-nez v12, :cond_47

    .line 1281
    move-object v12, v0

    .line 1283
    :cond_47
    goto :goto_21

    .line 1285
    :cond_48
    return-object v12
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[J)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1124
    move-object/from16 v1, p1

    .line 1125
    :try_start_2
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_b4

    .line 1126
    :try_start_7
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1127
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1128
    const-string v2, "history"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v2, "ver"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 1133
    const/4 v3, 0x2

    if-lt v2, v3, :cond_8e

    .line 1138
    const-string/jumbo v2, "ov"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 1139
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v2, 0x0

    move-object/from16 v16, v2

    .line 1140
    :goto_33
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1141
    const-string/jumbo v2, "ops"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1142
    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v17, v12

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;JJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1145
    if-nez v2, :cond_60

    .line 1146
    goto :goto_7e

    .line 1148
    :cond_60
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1149
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1150
    goto :goto_7e

    .line 1152
    :cond_6a
    if-nez v16, :cond_72

    .line 1153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_74

    .line 1152
    :cond_72
    move-object/from16 v3, v16

    .line 1155
    :goto_74
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    move-object/from16 v16, v3

    move/from16 v12, v17

    goto :goto_33

    .line 1141
    :cond_7c
    move/from16 v17, v12

    .line 1140
    :goto_7e
    move/from16 v12, v17

    goto :goto_33

    .line 1158
    :cond_81
    if-eqz p10, :cond_89

    .line 1159
    const/4 v0, 0x0

    aget-wide v2, p10, v0

    add-long/2addr v2, v14

    aput-wide v2, p10, v0
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_a5

    .line 1161
    :cond_89
    :try_start_89
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8c} :catch_b4

    .line 1164
    nop

    .line 1172
    return-object v16

    .line 1134
    :cond_8e
    :try_start_8e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a5
    .catchall {:try_start_8e .. :try_end_a5} :catchall_a5

    .line 1125
    :catchall_a5
    move-exception v0

    move-object v2, v0

    :try_start_a7
    throw v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 1161
    :catchall_a8
    move-exception v0

    move-object v3, v0

    :try_start_aa
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b3

    :catchall_ae
    move-exception v0

    move-object v4, v0

    :try_start_b0
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw v3
    :try_end_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b4} :catch_b4

    :catch_b4
    move-exception v0

    .line 1162
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No history file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1090
    move-object v0, p0

    move-object/from16 v1, p16

    move-object v2, p1

    move/from16 v3, p15

    invoke-direct {p0, p1, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1091
    if-eqz v1, :cond_13

    .line 1092
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1094
    :cond_13
    cmp-long v3, p9, p11

    if-gez v3, :cond_5b

    cmp-long v3, p11, p2

    if-gez v3, :cond_1c

    goto :goto_5b

    .line 1099
    :cond_1c
    sub-long v3, p4, p2

    iget-wide v5, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v3, v5

    add-long/2addr v3, p4

    .line 1101
    if-eqz p14, :cond_28

    const/4 v5, 0x0

    aget-wide v5, p14, v5

    goto :goto_2a

    :cond_28
    const-wide/16 v5, 0x0

    :goto_2a
    add-long/2addr v3, v5

    cmp-long v3, p9, v3

    if-gez v3, :cond_4b

    .line 1102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_4b

    .line 1111
    :cond_36
    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move/from16 v9, p13

    move-object/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1103
    :cond_4b
    :goto_4b
    if-eqz v1, :cond_56

    invoke-interface/range {p16 .. p16}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_56

    .line 1108
    :cond_54
    const/4 v0, 0x0

    return-object v0

    .line 1105
    :cond_56
    :goto_56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1247
    move-object/from16 v9, p3

    move-object/from16 v0, p4

    const-string/jumbo v1, "na"

    invoke-static {v9, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1248
    if-eqz v0, :cond_18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1249
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1250
    const/4 v0, 0x0

    return-object v0

    .line 1252
    :cond_18
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move-object v12, p1

    .line 1253
    :cond_1d
    :goto_1d
    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1254
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1255
    move-object v0, p0

    move-object v1, v12

    move v2, p2

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1257
    if-nez v12, :cond_43

    .line 1258
    move-object v12, v0

    .line 1260
    :cond_43
    goto :goto_1d

    .line 1262
    :cond_44
    return-object v12
.end method

.method private readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1223
    move-object v9, p2

    move/from16 v0, p3

    const-string/jumbo v1, "na"

    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 1224
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    if-eq v0, v10, :cond_14

    .line 1225
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1226
    const/4 v0, 0x0

    return-object v0

    .line 1228
    :cond_14
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move-object v12, p1

    .line 1229
    :cond_19
    :goto_19
    invoke-static {p2, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1230
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1231
    move-object v0, p0

    move-object v1, v12

    move v2, v10

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1234
    if-nez v12, :cond_3f

    .line 1235
    move-object v12, v0

    .line 1237
    :cond_3f
    goto :goto_19

    .line 1239
    :cond_40
    return-object v12
.end method

.method private readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    move-object/from16 v0, p5

    const-string/jumbo v1, "na"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 1292
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    and-int v3, v3, p6

    .line 1293
    if-nez v3, :cond_13

    .line 1294
    const/4 v0, 0x0

    return-object v0

    .line 1296
    :cond_13
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v1

    .line 1297
    const-wide/16 v12, 0x0

    const-string v2, "ac"

    invoke-static {v0, v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1298
    cmp-long v2, v4, v12

    if-lez v2, :cond_4a

    .line 1299
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1300
    long-to-double v4, v4

    mul-double v4, v4, p7

    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    move-wide v10, v4

    goto :goto_34

    .line 1299
    :cond_33
    move-wide v10, v4

    .line 1303
    :goto_34
    if-nez p1, :cond_3c

    .line 1304
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v12, v13, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    goto :goto_3d

    .line 1303
    :cond_3c
    move-object v2, p1

    .line 1306
    :goto_3d
    move-object v4, v2

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v1

    move v9, v3

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;IIJ)V

    goto :goto_4b

    .line 1298
    :cond_4a
    move-object v2, p1

    .line 1308
    :goto_4b
    const-string/jumbo v4, "rc"

    invoke-static {v0, v4, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1309
    cmp-long v6, v4, v12

    if-lez v6, :cond_7a

    .line 1310
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_66

    .line 1311
    long-to-double v4, v4

    mul-double v4, v4, p7

    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    move-wide v10, v4

    goto :goto_67

    .line 1310
    :cond_66
    move-wide v10, v4

    .line 1314
    :goto_67
    if-nez v2, :cond_6e

    .line 1315
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v12, v13, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 1317
    :cond_6e
    move-object v4, v2

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v1

    move v9, v3

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;IIJ)V

    .line 1319
    :cond_7a
    const-string v4, "du"

    invoke-static {v0, v4, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1320
    cmp-long v0, v4, v12

    if-lez v0, :cond_ab

    .line 1321
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_94

    .line 1322
    long-to-double v4, v4

    mul-double v4, v4, p7

    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    move-wide v10, v4

    goto :goto_95

    .line 1321
    :cond_94
    move-wide v10, v4

    .line 1325
    :goto_95
    if-nez v2, :cond_9d

    .line 1326
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v12, v13, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    goto :goto_9e

    .line 1325
    :cond_9d
    move-object v0, v2

    .line 1328
    :goto_9e
    move-object v4, v0

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v1

    move v9, v3

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;IIJ)V

    goto :goto_ac

    .line 1320
    :cond_ab
    move-object v0, v2

    .line 1330
    :goto_ac
    return-object v0
.end method

.method private readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;JJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1181
    move-object/from16 v9, p1

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    const-wide/16 v4, 0x0

    const-string v6, "beg"

    invoke-static {v9, v6, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1182
    const/4 v8, 0x0

    if-eqz p10, :cond_14

    aget-wide v10, p10, v8

    goto :goto_15

    :cond_14
    move-wide v10, v4

    :goto_15
    add-long/2addr v6, v10

    .line 1183
    const-string v10, "end"

    invoke-static {v9, v10, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1184
    if-eqz p10, :cond_21

    aget-wide v12, p10, v8

    goto :goto_22

    :cond_21
    move-wide v12, v4

    :goto_22
    add-long/2addr v10, v12

    .line 1186
    cmp-long v8, v2, v6

    const/4 v12, 0x0

    if-gez v8, :cond_29

    .line 1187
    return-object v12

    .line 1190
    :cond_29
    cmp-long v8, v0, v10

    if-lez v8, :cond_33

    .line 1191
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v4, v5, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1193
    :cond_33
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1194
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1199
    sub-long v0, v4, v13

    long-to-double v0, v0

    sub-long/2addr v10, v6

    long-to-double v2, v10

    div-double v10, v0, v2

    .line 1201
    nop

    .line 1202
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 1203
    :goto_47
    invoke-static {v9, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1204
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1205
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v7, v4

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p9

    move-wide/from16 p5, v13

    move-wide v13, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1207
    if-nez v12, :cond_73

    .line 1208
    move-object v12, v0

    .line 1210
    :cond_73
    move-wide v4, v13

    move-wide/from16 v13, p5

    goto :goto_47

    .line 1204
    :cond_77
    move-wide/from16 p5, v13

    move-wide v13, v4

    move-wide/from16 v13, p5

    goto :goto_47

    .line 1212
    :cond_7d
    move-wide/from16 p5, v13

    move-wide v13, v4

    if-eqz v12, :cond_87

    .line 1213
    move-wide/from16 v0, p5

    invoke-virtual {v12, v0, v1, v13, v14}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 1215
    :cond_87
    return-object v12
.end method

.method private static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    .line 1500
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    .line 1504
    return-object p0
.end method

.method private static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    .line 1487
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    .line 1491
    return-object p0
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1403
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_37

    .line 1407
    :cond_d
    const-string/jumbo v1, "op"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "na"

    invoke-interface {p2, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1410
    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_33

    .line 1411
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V

    .line 1410
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1413
    :cond_33
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    return-void

    .line 1405
    :cond_37
    :goto_37
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    const-string/jumbo v0, "ops"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "beg"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1368
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    .line 1370
    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_32

    .line 1371
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1372
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1370
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1374
    :cond_32
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1375
    return-void
.end method

.method private writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    const-string v0, "history"

    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p4

    .line 1337
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 1338
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1339
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1341
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1342
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    const-string/jumbo v2, "ver"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1344
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_41

    .line 1345
    const-string/jumbo v2, "ov"

    .line 1346
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 1345
    invoke-interface {v1, v3, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    :cond_41
    if-eqz p1, :cond_56

    .line 1349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 1350
    const/4 p3, 0x0

    :goto_48
    if-ge p3, p2, :cond_56

    .line 1351
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1352
    invoke-direct {p0, v2, v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1350
    add-int/lit8 p3, p3, 0x1

    goto :goto_48

    .line 1355
    :cond_56
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1356
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1357
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1, p4}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_61} :catch_63

    .line 1361
    nop

    .line 1362
    return-void

    .line 1358
    :catch_63
    move-exception p1

    .line 1359
    sget-object p2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p2, p4}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1360
    throw p1
.end method

.method private writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    const-string/jumbo v0, "pkg"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1393
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v2

    .line 1394
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    .line 1395
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1396
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1394
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1398
    :cond_22
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1399
    return-void
.end method

.method private writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1379
    const-string/jumbo v0, "uid"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1380
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1381
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    .line 1382
    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_26

    .line 1383
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1384
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1382
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1386
    :cond_26
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    return-void
.end method

.method private writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    .line 1419
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    .line 1421
    invoke-virtual {p1, v0, v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v2

    .line 1422
    invoke-virtual {p1, v0, v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v4

    .line 1423
    invoke-virtual {p1, v0, v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v0

    .line 1425
    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-gtz p1, :cond_23

    cmp-long v8, v4, v6

    if-gtz v8, :cond_23

    cmp-long v8, v0, v6

    if-gtz v8, :cond_23

    .line 1426
    return-void

    .line 1429
    :cond_23
    const-string/jumbo v8, "st"

    const/4 v9, 0x0

    invoke-interface {p4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1430
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "na"

    invoke-interface {p4, v9, p3, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1431
    if-lez p1, :cond_3f

    .line 1432
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ac"

    invoke-interface {p4, v9, p2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    :cond_3f
    cmp-long p1, v4, v6

    if-lez p1, :cond_4d

    .line 1435
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rc"

    invoke-interface {p4, v9, p2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    :cond_4d
    cmp-long p1, v0, v6

    if-lez p1, :cond_5a

    .line 1438
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "du"

    invoke-interface {p4, v9, p2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    :cond_5a
    invoke-interface {p4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    return-void
.end method


# virtual methods
.method clearHistoryDLocked(ILjava/lang/String;)V
    .registers 6

    .line 728
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    .line 730
    if-nez v0, :cond_7

    .line 731
    return-void

    .line 734
    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 738
    :cond_1a
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 741
    return-void
.end method

.method getLastPersistTimeMillisDLocked()J
    .registers 12

    .line 793
    nop

    .line 795
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_4
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_59

    .line 796
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 797
    if-eqz v4, :cond_51

    array-length v5, v4

    if-lez v5, :cond_51

    .line 798
    nop

    .line 799
    array-length v5, v4
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_57

    const/4 v6, 0x0

    :goto_16
    const-string v7, ".xml"

    if-ge v6, v5, :cond_3d

    :try_start_1a
    aget-object v8, v4, v6

    .line 800
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 801
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 802
    goto :goto_3a

    .line 804
    :cond_27
    if-nez v0, :cond_2a

    .line 805
    goto :goto_39

    .line 806
    :cond_2a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3a

    .line 807
    nop

    .line 799
    :goto_39
    move-object v0, v8

    :cond_3a
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 810
    :cond_3d
    if-nez v0, :cond_40

    .line 811
    return-wide v1

    .line 813
    :cond_40
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    .line 814
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_57

    .line 816
    :try_start_4a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4e} :catch_4f
    .catchall {:try_start_4a .. :try_end_4e} :catchall_57

    return-wide v0

    .line 817
    :catch_4f
    move-exception v0

    .line 818
    return-wide v1

    .line 821
    :cond_51
    :try_start_51
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_57

    .line 825
    goto :goto_67

    .line 822
    :catchall_57
    move-exception v0

    goto :goto_5d

    :catchall_59
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    .line 823
    :goto_5d
    const-string v4, "Error reading historical app ops. Deleting history."

    invoke-static {v4, v0, v3}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 824
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 826
    :goto_67
    return-wide v1
.end method

.method persistHistoricalOpsDLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 753
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 754
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 760
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    .line 761
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 766
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 770
    goto :goto_28

    .line 767
    :catchall_1c
    move-exception p1

    .line 768
    const/4 v0, 0x0

    const-string v1, "Failed to write historical app ops, restoring backup"

    invoke-static {v1, p1, v0}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 769
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 771
    :goto_28
    return-void
.end method

.method readHistoryDLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_1b

    .line 784
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 785
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    .line 786
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 789
    :cond_1b
    return-object v0
.end method

.method readHistoryRawDLocked()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 774
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/16 v8, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method
