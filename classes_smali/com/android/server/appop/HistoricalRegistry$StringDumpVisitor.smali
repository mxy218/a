.class final Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"

# interfaces
.implements Landroid/app/AppOpsManager$HistoricalOpsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StringDumpVisitor"
.end annotation


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private final mEntryPrefix:Ljava/lang/String;

.field private final mFilterOp:I

.field private final mFilterPackage:Ljava/lang/String;

.field private final mFilterUid:I

.field private final mNow:J

.field private final mOpsPrefix:Ljava/lang/String;

.field private final mPackagePrefix:Ljava/lang/String;

.field private final mUidPrefix:Ljava/lang/String;

.field private final mUidStatePrefix:Ljava/lang/String;

.field private final mWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V
    .registers 9

    .line 1640
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    .line 1625
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 1627
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    .line 1641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    .line 1642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    .line 1643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    .line 1644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    .line 1645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    .line 1646
    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    .line 1647
    iput p4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    .line 1648
    iput-object p5, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1649
    iput p6, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    .line 1650
    return-void
.end method


# virtual methods
.method public visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 19

    .line 1698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 1699
    return-void

    .line 1701
    :cond_10
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 1705
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1706
    const/4 v5, 0x0

    :goto_34
    if-ge v5, v3, :cond_f0

    .line 1707
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1708
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v8

    .line 1709
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v9

    .line 1710
    nop

    .line 1711
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v10

    .line 1712
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    const-string v15, " = "

    const/16 v16, 0x1

    if-lez v14, :cond_77

    .line 1713
    nop

    .line 1714
    iget-object v14, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1716
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    nop

    .line 1719
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v14, "access="

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    move/from16 v4, v16

    goto :goto_78

    .line 1712
    :cond_77
    const/4 v4, 0x0

    .line 1722
    :goto_78
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v10

    .line 1723
    cmp-long v14, v10, v12

    const-string v12, ", "

    if-lez v14, :cond_ae

    .line 1724
    if-nez v4, :cond_9c

    .line 1725
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1727
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    move/from16 v4, v16

    goto :goto_a1

    .line 1730
    :cond_9c
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    :goto_a1
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v14, "reject="

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1733
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1735
    :cond_ae
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    .line 1736
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_e3

    .line 1737
    if-nez v4, :cond_d2

    .line 1738
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v10, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1741
    move/from16 v4, v16

    goto :goto_d7

    .line 1743
    :cond_d2
    iget-object v6, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1745
    :goto_d7
    iget-object v6, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v7, "duration="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget-object v6, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v8, v9, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1748
    :cond_e3
    if-eqz v4, :cond_ec

    .line 1749
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    :cond_ec
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_34

    .line 1752
    :cond_f0
    return-void
.end method

.method public visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 8

    .line 1654
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1655
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "snapshot:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "begin = "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1660
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1663
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "end = "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1670
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    return-void
.end method

.method public visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 4

    .line 1687
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1688
    return-void

    .line 1690
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method public visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 4

    .line 1675
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 1676
    return-void

    .line 1678
    :cond_c
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1679
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1682
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    return-void
.end method
