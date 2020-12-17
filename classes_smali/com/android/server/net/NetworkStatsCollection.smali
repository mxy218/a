.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "bucketDuration"  # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 107
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 109
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .registers 23
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "start"  # J
    .param p4, "end"  # J
    .param p6, "groupTemplate"  # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"  # Ljava/lang/String;

    .line 726
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 729
    .local v2, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 730
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 731
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 733
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    iget-object v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v12, p6

    invoke-static {v12, v6}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_61

    .line 734
    :cond_2c
    iget v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_33

    goto :goto_61

    .line 736
    :cond_33
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v7, 0x0

    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v9, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v10, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    move-object v13, v6

    .line 737
    .local v13, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 738
    .local v6, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_57

    .line 739
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v6, v7

    .line 740
    invoke-virtual {v2, v13, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v6

    goto :goto_58

    .line 738
    :cond_57
    move-object v14, v6

    .line 742
    .end local v6  # "groupHistory":Landroid/net/NetworkStatsHistory;
    .local v14, "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_58
    move-object v6, v14

    move-object v7, v5

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 729
    .end local v4  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5  # "value":Landroid/net/NetworkStatsHistory;
    .end local v13  # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v14  # "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_64
    move-object/from16 v12, p6

    .line 745
    .end local v3  # "i":I
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_67
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_b3

    .line 746
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 747
    .restart local v4  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 749
    .restart local v5  # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v6

    if-nez v6, :cond_82

    move-object/from16 v6, p7

    goto :goto_b0

    .line 751
    :cond_82
    const-string v6, "c,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 753
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 754
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v8}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 755
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 756
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 758
    invoke-virtual {v5, v1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    .line 745
    .end local v4  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5  # "value":Landroid/net/NetworkStatsHistory;
    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_b3
    move-object/from16 v6, p7

    .line 760
    .end local v3  # "i":I
    return-void
.end method

.method private estimateBuckets()I
    .registers 5

    .line 665
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .registers 12
    .param p1, "ident"  # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"  # I
    .param p3, "set"  # I
    .param p4, "tag"  # I

    .line 437
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 438
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 441
    .local v1, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 442
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v1, :cond_1b

    .line 443
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    move-object v2, v3

    goto :goto_2b

    .line 444
    :cond_1b
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2b

    .line 445
    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v1, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    move-object v2, v3

    .line 448
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_33

    .line 449
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-object v2

    .line 452
    :cond_33
    return-object v1
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .line 670
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 671
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 673
    return-object v0
.end method

.method public static multiplySafe(JJJ)J
    .registers 23
    .param p0, "value"  # J
    .param p2, "num"  # J
    .param p4, "den"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_9

    const-wide/16 v2, 0x1

    .end local p4  # "den":J
    .local v2, "den":J
    goto :goto_b

    .end local v2  # "den":J
    .restart local p4  # "den":J
    :cond_9
    move-wide/from16 v2, p4

    .line 197
    .end local p4  # "den":J
    .restart local v2  # "den":J
    :goto_b
    move-wide/from16 v4, p0

    .line 198
    .local v4, "x":J
    move-wide/from16 v6, p2

    .line 201
    .local v6, "y":J
    mul-long v8, v4, v6

    .line 202
    .local v8, "r":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 203
    .local v10, "ax":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 204
    .local v12, "ay":J
    or-long v14, v10, v12

    const/16 v16, 0x1f

    ushr-long v14, v14, v16

    cmp-long v14, v14, v0

    if-eqz v14, :cond_4b

    .line 208
    cmp-long v0, v6, v0

    if-eqz v0, :cond_2d

    div-long v0, v8, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_39

    :cond_2d
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v4, v0

    if-nez v0, :cond_46

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_46

    .line 211
    :cond_39
    move-wide/from16 v0, p2

    long-to-double v14, v0

    long-to-double v0, v2

    div-double/2addr v14, v0

    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    .end local v4  # "x":J
    .local p4, "x":J
    long-to-double v4, v0

    mul-double/2addr v14, v4

    double-to-long v4, v14

    return-wide v4

    .line 208
    .end local p4  # "x":J
    .restart local v4  # "x":J
    :cond_46
    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    .end local v4  # "x":J
    .restart local p4  # "x":J
    goto :goto_4f

    .line 204
    .end local p4  # "x":J
    .restart local v4  # "x":J
    :cond_4b
    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    .line 214
    .end local v4  # "x":J
    .restart local p4  # "x":J
    :goto_4f
    div-long v4, v8, v2

    return-wide v4
.end method

.method private noteRecordedHistory(JJJ)V
    .registers 9
    .param p1, "startMillis"  # J
    .param p3, "endMillis"  # J
    .param p5, "totalBytes"  # J

    .line 658
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 659
    :cond_8
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 660
    :cond_10
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 662
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .registers 11
    .param p1, "key"  # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"  # Landroid/net/NetworkStatsHistory;

    .line 412
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 413
    :cond_7
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 415
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 416
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_30

    .line 417
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v0, v1

    .line 418
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_30
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 421
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .registers 5
    .param p0, "template"  # Landroid/net/NetworkTemplate;
    .param p1, "identSet"  # Lcom/android/server/net/NetworkIdentitySet;

    .line 767
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 768
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 769
    const/4 v0, 0x1

    return v0

    .line 771
    .end local v1  # "ident":Landroid/net/NetworkIdentity;
    :cond_18
    goto :goto_4

    .line 772
    :cond_19
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 112
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 113
    return-void
.end method

.method public clearDirty()V
    .registers 2

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 153
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 677
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 678
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string/jumbo v2, "ident="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 679
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 680
    const-string v2, " set="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const-string v2, " tag="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 684
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 685
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    .end local v1  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2  # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_8

    .line 688
    :cond_5c
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 22
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 714
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string v15, "bt"

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public getEndMillis()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .registers 6

    .line 132
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 133
    return-wide v2

    .line 135
    :cond_c
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .registers 55
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "augmentPlan"  # Landroid/telephony/SubscriptionPlan;
    .param p3, "uid"  # I
    .param p4, "set"  # I
    .param p5, "tag"  # I
    .param p6, "fields"  # I
    .param p7, "start"  # J
    .param p9, "end"  # J
    .param p11, "accessLevel"  # I
    .param p12, "callerUid"  # I

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v9, p12

    move/from16 v10, p11

    invoke-static {v1, v9, v10}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 252
    sub-long v3, p9, p7

    iget-wide v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v11, v3, v5

    const-wide/16 v13, 0x0

    const-wide v3, 0x39ef8b000L

    div-long v15, v3, v5

    invoke-static/range {v11 .. v16}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v11, v3

    .line 254
    .local v11, "bucketEstimate":I
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v4, v5, v11, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v7, v3

    .line 258
    .local v7, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v3, p7, p9

    if-nez v3, :cond_31

    return-object v7

    .line 261
    :cond_31
    const-wide/16 v3, -0x1

    .line 262
    .local v3, "augmentStart":J
    const-wide/16 v5, -0x1

    if-eqz p2, :cond_3c

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v12

    goto :goto_3d

    .line 263
    :cond_3c
    move-wide v12, v5

    :goto_3d
    nop

    .line 265
    .local v12, "augmentEnd":J
    move-wide/from16 v14, p7

    .line 266
    .local v14, "collectStart":J
    move-wide/from16 v16, p9

    .line 268
    .local v16, "collectEnd":J
    cmp-long v8, v12, v5

    if-eqz v8, :cond_93

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v8

    .line 270
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_90

    .line 271
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Range;

    .line 272
    .local v18, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v19 .. v19}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 273
    .local v19, "cycleStart":J
    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v21

    check-cast v21, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 274
    .local v21, "cycleEnd":J
    cmp-long v23, v19, v12

    if-gtz v23, :cond_89

    cmp-long v23, v12, v21

    if-gez v23, :cond_89

    .line 275
    move-wide/from16 v3, v19

    .line 276
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v14

    .line 277
    move-wide/from16 v5, v16

    .end local v16  # "collectEnd":J
    .local v5, "collectEnd":J
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v16

    .line 278
    .end local v5  # "collectEnd":J
    .restart local v16  # "collectEnd":J
    move-wide/from16 v5, v16

    goto :goto_95

    .line 274
    :cond_89
    move-wide/from16 v5, v16

    .line 280
    .end local v16  # "collectEnd":J
    .end local v18  # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v19  # "cycleStart":J
    .end local v21  # "cycleEnd":J
    .restart local v5  # "collectEnd":J
    move-wide/from16 v16, v5

    const-wide/16 v5, -0x1

    goto :goto_4a

    .line 270
    .end local v5  # "collectEnd":J
    .restart local v16  # "collectEnd":J
    :cond_90
    move-wide/from16 v5, v16

    .end local v16  # "collectEnd":J
    .restart local v5  # "collectEnd":J
    goto :goto_95

    .line 268
    .end local v5  # "collectEnd":J
    .end local v8  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    .restart local v16  # "collectEnd":J
    :cond_93
    move-wide/from16 v5, v16

    .line 283
    .end local v16  # "collectEnd":J
    .restart local v5  # "collectEnd":J
    :goto_95
    const-wide/16 v16, -0x1

    cmp-long v8, v3, v16

    if-eqz v8, :cond_b4

    .line 285
    invoke-virtual {v0, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v3

    .line 286
    invoke-virtual {v0, v12, v13}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v12

    .line 288
    invoke-virtual {v0, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v14

    .line 289
    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v5

    move-wide/from16 v18, v3

    move-wide/from16 v27, v5

    move-wide/from16 v20, v12

    move-wide/from16 v25, v14

    goto :goto_bc

    .line 283
    :cond_b4
    move-wide/from16 v18, v3

    move-wide/from16 v27, v5

    move-wide/from16 v20, v12

    move-wide/from16 v25, v14

    .line 292
    .end local v3  # "augmentStart":J
    .end local v5  # "collectEnd":J
    .end local v12  # "augmentEnd":J
    .end local v14  # "collectStart":J
    .local v18, "augmentStart":J
    .local v20, "augmentEnd":J
    .local v25, "collectStart":J
    .local v27, "collectEnd":J
    :goto_bc
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bd
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_104

    .line 293
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 294
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v5, v1, :cond_fd

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v8, p4

    invoke-static {v8, v5}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v5

    if-eqz v5, :cond_ff

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v6, p5

    if-ne v5, v6, :cond_101

    iget-object v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 295
    move-object/from16 v14, p1

    invoke-static {v14, v5}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 296
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 297
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    move-object v12, v7

    move-object v13, v5

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_101

    .line 294
    .end local v5  # "value":Landroid/net/NetworkStatsHistory;
    :cond_fd
    move/from16 v8, p4

    :cond_ff
    move/from16 v6, p5

    .line 292
    .end local v4  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_101
    :goto_101
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    :cond_104
    move/from16 v8, p4

    move/from16 v6, p5

    .line 301
    .end local v3  # "i":I
    const-wide/16 v3, -0x1

    cmp-long v3, v18, v3

    if-eqz v3, :cond_1f9

    .line 302
    const/16 v17, 0x0

    move-object v12, v7

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v5

    .line 307
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_12a

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_128

    goto :goto_12a

    :cond_128
    move-wide v8, v13

    goto :goto_14b

    .line 308
    :cond_12a
    :goto_12a
    new-instance v3, Landroid/net/NetworkStats$Entry;

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v39}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object v12, v7

    move-wide v8, v13

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 310
    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 313
    :goto_14b
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v12, v3

    .line 314
    .local v12, "rawBytes":J
    iget-wide v14, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 315
    .local v14, "rawRxBytes":J
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 316
    .local v3, "rawTxBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v16

    .line 317
    .local v16, "targetBytes":J
    move-wide/from16 v29, v16

    move-wide/from16 v31, v14

    move-wide/from16 v33, v12

    invoke-static/range {v29 .. v34}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v22

    .line 318
    .local v22, "targetRxBytes":J
    move-wide/from16 v31, v3

    invoke-static/range {v29 .. v34}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v35

    .line 321
    .local v35, "targetTxBytes":J
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v37

    .line 322
    .local v37, "beforeTotal":J
    const/16 v24, 0x0

    move/from16 v8, v24

    .local v8, "i":I
    :goto_170
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v9

    if-ge v8, v9, :cond_1b9

    .line 323
    invoke-virtual {v7, v8, v5}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 324
    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v9, v9, v18

    if-ltz v9, :cond_1b0

    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v40, v12

    .end local v12  # "rawBytes":J
    .local v40, "rawBytes":J
    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v9, v12

    cmp-long v9, v9, v20

    if-gtz v9, :cond_1b2

    .line 326
    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v29, v22

    move-wide/from16 v31, v9

    move-wide/from16 v33, v14

    invoke-static/range {v29 .. v34}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 327
    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v29, v35

    move-wide/from16 v31, v9

    move-wide/from16 v33, v3

    invoke-static/range {v29 .. v34}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 330
    const-wide/16 v9, 0x0

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 331
    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 332
    invoke-virtual {v7, v8, v5}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    goto :goto_1b2

    .line 324
    .end local v40  # "rawBytes":J
    .restart local v12  # "rawBytes":J
    :cond_1b0
    move-wide/from16 v40, v12

    .line 322
    .end local v12  # "rawBytes":J
    .restart local v40  # "rawBytes":J
    :cond_1b2
    :goto_1b2
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, p11

    move-wide/from16 v12, v40

    goto :goto_170

    .end local v40  # "rawBytes":J
    .restart local v12  # "rawBytes":J
    :cond_1b9
    move-wide/from16 v40, v12

    .line 336
    .end local v8  # "i":I
    .end local v12  # "rawBytes":J
    .restart local v40  # "rawBytes":J
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v8

    sub-long v9, v8, v37

    .line 337
    .local v9, "deltaTotal":J
    const-wide/16 v12, 0x0

    cmp-long v8, v9, v12

    if-eqz v8, :cond_1e2

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Augmented network usage by "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " bytes"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "NetworkStats"

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1e2
    new-instance v8, Landroid/net/NetworkStatsHistory;

    iget-wide v12, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v8, v12, v13, v11, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v12, v8

    .line 344
    .local v12, "sliced":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v29, v3

    .end local v3  # "rawTxBytes":J
    .local v29, "rawTxBytes":J
    move-object v3, v12

    move-object v4, v7

    move-object v13, v5

    .end local v5  # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-wide/from16 v5, p7

    move-object/from16 v24, v7

    .end local v7  # "combined":Landroid/net/NetworkStatsHistory;
    .local v24, "combined":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v7, p9

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 345
    return-object v12

    .line 347
    .end local v9  # "deltaTotal":J
    .end local v12  # "sliced":Landroid/net/NetworkStatsHistory;
    .end local v13  # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14  # "rawRxBytes":J
    .end local v16  # "targetBytes":J
    .end local v22  # "targetRxBytes":J
    .end local v24  # "combined":Landroid/net/NetworkStatsHistory;
    .end local v29  # "rawTxBytes":J
    .end local v35  # "targetTxBytes":J
    .end local v37  # "beforeTotal":J
    .end local v40  # "rawBytes":J
    .restart local v7  # "combined":Landroid/net/NetworkStatsHistory;
    :cond_1f9
    move-object/from16 v24, v7

    .end local v7  # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v24  # "combined":Landroid/net/NetworkStatsHistory;
    return-object v24

    .line 246
    .end local v11  # "bucketEstimate":I
    .end local v18  # "augmentStart":J
    .end local v20  # "augmentEnd":J
    .end local v24  # "combined":Landroid/net/NetworkStatsHistory;
    .end local v25  # "collectStart":J
    .end local v27  # "collectEnd":J
    :cond_1fc
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network stats history of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is forbidden for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRelevantUids(I)[I
    .registers 3
    .param p1, "accessLevel"  # I

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .registers 8
    .param p1, "accessLevel"  # I
    .param p2, "callerUid"  # I

    .line 223
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 224
    .local v0, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 225
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 226
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 227
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    .line 229
    .local v3, "j":I
    if-gez v3, :cond_2c

    .line 230
    not-int v3, v3

    .line 231
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/util/IntArray;->add(II)V

    .line 224
    .end local v2  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3  # "j":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 235
    .end local v1  # "i":I
    :cond_2f
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public getStartMillis()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .registers 25
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J
    .param p6, "accessLevel"  # I
    .param p7, "callerUid"  # I

    .line 357
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 359
    .local v9, "now":J
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v11, v1

    .line 362
    .local v11, "stats":Landroid/net/NetworkStats;
    cmp-long v1, p2, p4

    if-nez v1, :cond_15

    return-object v11

    .line 364
    :cond_15
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v12, v1

    .line 365
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 367
    .local v1, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v2, 0x0

    move-object v14, v1

    move v13, v2

    .end local v1  # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v13, "i":I
    .local v14, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_1f
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v13, v1, :cond_b0

    .line 368
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 369
    .local v15, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 370
    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static {v1, v7, v6}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_ac

    .line 372
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/net/NetworkStatsHistory;

    .line 373
    .local v16, "value":Landroid/net/NetworkStatsHistory;
    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v9

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v14

    .line 375
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 376
    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v1, v12, Landroid/net/NetworkStats$Entry;->uid:I

    .line 377
    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v1, v12, Landroid/net/NetworkStats$Entry;->set:I

    .line 378
    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v1, v12, Landroid/net/NetworkStats$Entry;->tag:I

    .line 379
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 380
    const/4 v1, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    iput v1, v12, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 381
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v1

    iput v1, v12, Landroid/net/NetworkStats$Entry;->metered:I

    .line 382
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v1

    iput v1, v12, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 383
    iget-wide v1, v14, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 384
    iget-wide v1, v14, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 385
    iget-wide v1, v14, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 386
    iget-wide v1, v14, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 387
    iget-wide v1, v14, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 389
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 390
    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 367
    .end local v15  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v16  # "value":Landroid/net/NetworkStatsHistory;
    :cond_ac
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1f

    .line 395
    .end local v13  # "i":I
    :cond_b0
    return-object v11
.end method

.method public getTotalBytes()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 156
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 14
    .param p1, "in"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 464
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_5d

    .line 468
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 469
    .local v1, "version":I
    const/16 v2, 0x10

    if-ne v1, v2, :cond_45

    .line 472
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 473
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_43

    .line 474
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, p1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 476
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 477
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_22
    if-ge v6, v5, :cond_40

    .line 478
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 479
    .local v7, "uid":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 480
    .local v8, "set":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 482
    .local v9, "tag":I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 483
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v11, Landroid/net/NetworkStatsHistory;

    invoke-direct {v11, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 484
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v10, v11}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 477
    .end local v7  # "uid":I
    .end local v8  # "set":I
    .end local v9  # "tag":I
    .end local v10  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11  # "history":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 473
    .end local v4  # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5  # "size":I
    .end local v6  # "j":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 487
    .end local v3  # "i":I
    :cond_43
    nop

    .line 493
    .end local v2  # "identSize":I
    return-void

    .line 490
    :cond_45
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    .end local v1  # "version":I
    :cond_5d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 459
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .registers 13
    .param p1, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 532
    .local v0, "inputFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 534
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 537
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 538
    .local v2, "magic":I
    const v3, 0x414e4554

    if-ne v2, v3, :cond_5c

    .line 542
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 543
    .local v3, "version":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    .line 546
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 547
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2a
    if-ge v5, v4, :cond_43

    .line 548
    new-instance v6, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 549
    .local v6, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 551
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v8, v6, v10, v10, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 552
    .local v8, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 547
    .end local v6  # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v7  # "history":Landroid/net/NetworkStatsHistory;
    .end local v8  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 554
    .end local v5  # "i":I
    :cond_43
    goto :goto_7a

    .line 557
    .end local v4  # "size":I
    :cond_44
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0  # "inputFile":Landroid/util/AtomicFile;
    .end local v1  # "in":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1  # "file":Ljava/io/File;
    throw v4

    .line 539
    .end local v3  # "version":I
    .restart local v0  # "inputFile":Landroid/util/AtomicFile;
    .restart local v1  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1  # "file":Ljava/io/File;
    :cond_5c
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0  # "inputFile":Landroid/util/AtomicFile;
    .end local v1  # "in":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1  # "file":Ljava/io/File;
    throw v3
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_74} :catch_79
    .catchall {:try_start_6 .. :try_end_74} :catchall_74

    .line 563
    .end local v2  # "magic":I
    .restart local v0  # "inputFile":Landroid/util/AtomicFile;
    .restart local v1  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1  # "file":Ljava/io/File;
    :catchall_74
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 560
    :catch_79
    move-exception v2

    .line 563
    :goto_7a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 564
    nop

    .line 565
    return-void
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .registers 19
    .param p1, "file"  # Ljava/io/File;
    .param p2, "onlyTags"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 571
    .local v2, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 573
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_9
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 576
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 577
    .local v0, "magic":I
    const v4, 0x414e4554

    if-ne v0, v4, :cond_a9

    .line 581
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 582
    .local v4, "version":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_a4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9f

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v4, v6, :cond_4a

    if-ne v4, v7, :cond_32

    goto :goto_4a

    .line 622
    :cond_32
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2  # "inputFile":Landroid/util/AtomicFile;
    .end local v3  # "in":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1  # "file":Ljava/io/File;
    .end local p2  # "onlyTags":Z
    throw v5

    .line 600
    .restart local v2  # "inputFile":Landroid/util/AtomicFile;
    .restart local v3  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1  # "file":Ljava/io/File;
    .restart local p2  # "onlyTags":Z
    :cond_4a
    :goto_4a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 601
    .local v6, "identSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4f
    if-ge v8, v6, :cond_9a

    .line 602
    new-instance v9, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v9, v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 604
    .local v9, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 605
    .local v10, "size":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5b
    if-ge v11, v10, :cond_8f

    .line 606
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 607
    .local v12, "uid":I
    const/4 v13, 0x0

    if-lt v4, v7, :cond_69

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    goto :goto_6a

    .line 608
    :cond_69
    move v14, v13

    :goto_6a
    nop

    .line 609
    .local v14, "set":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 611
    .local v15, "tag":I
    new-instance v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v5, v9, v12, v14, v15}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 612
    .local v5, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v3}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_79} :catch_d2
    .catchall {:try_start_9 .. :try_end_79} :catchall_c9

    .line 614
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    if-nez v15, :cond_7c

    const/4 v13, 0x1

    :cond_7c
    move/from16 v1, p2

    if-eq v13, v1, :cond_86

    .line 615
    move-object/from16 v13, p0

    :try_start_82
    invoke-direct {v13, v5, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_88

    .line 614
    :cond_86
    move-object/from16 v13, p0

    .line 605
    .end local v5  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v7  # "history":Landroid/net/NetworkStatsHistory;
    .end local v12  # "uid":I
    .end local v14  # "set":I
    .end local v15  # "tag":I
    :goto_88
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto :goto_5b

    :cond_8f
    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 601
    .end local v9  # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v10  # "size":I
    .end local v11  # "j":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto :goto_4f

    :cond_9a
    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 619
    .end local v8  # "i":I
    goto :goto_d7

    .line 595
    .end local v6  # "identSize":I
    :cond_9f
    move-object/from16 v13, p0

    move/from16 v1, p2

    goto :goto_d7

    .line 588
    :cond_a4
    move-object/from16 v13, p0

    move/from16 v1, p2

    goto :goto_d7

    .line 578
    .end local v4  # "version":I
    :cond_a9
    move-object/from16 v13, p0

    move/from16 v1, p2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2  # "inputFile":Landroid/util/AtomicFile;
    .end local v3  # "in":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1  # "file":Ljava/io/File;
    .end local p2  # "onlyTags":Z
    throw v4
    :try_end_c5
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_c5} :catch_c7
    .catchall {:try_start_82 .. :try_end_c5} :catchall_c5

    .line 628
    .end local v0  # "magic":I
    .restart local v2  # "inputFile":Landroid/util/AtomicFile;
    .restart local v3  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1  # "file":Ljava/io/File;
    .restart local p2  # "onlyTags":Z
    :catchall_c5
    move-exception v0

    goto :goto_ce

    .line 625
    :catch_c7
    move-exception v0

    goto :goto_d7

    .line 628
    :catchall_c9
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v1, p2

    :goto_ce
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 625
    :catch_d2
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 628
    :goto_d7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 629
    nop

    .line 630
    return-void
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .registers 5
    .param p1, "another"  # Lcom/android/server/net/NetworkStatsCollection;

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 429
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 430
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 431
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 428
    .end local v1  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2  # "value":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    .end local v0  # "i":I
    :cond_1f
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .registers 25
    .param p1, "ident"  # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"  # I
    .param p3, "set"  # I
    .param p4, "tag"  # I
    .param p5, "start"  # J
    .param p7, "end"  # J
    .param p9, "entry"  # Landroid/net/NetworkStats$Entry;

    .line 403
    move-object/from16 v6, p9

    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 404
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    move-object v0, v7

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 405
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v11

    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v13, v0, v2

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 406
    return-void
.end method

.method public removeUids([I)V
    .registers 9
    .param p1, "uids"  # [I

    .line 638
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 639
    .local v0, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 643
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 645
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v3, :cond_3c

    .line 646
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 647
    .local v3, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 649
    .local v4, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 651
    .end local v3  # "uidHistory":Landroid/net/NetworkStatsHistory;
    .end local v4  # "removedHistory":Landroid/net/NetworkStatsHistory;
    :cond_3c
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 654
    .end local v2  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_44
    goto :goto_11

    .line 655
    :cond_45
    return-void
.end method

.method public reset()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 121
    return-void
.end method

.method public roundDown(J)J
    .registers 7
    .param p1, "time"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 176
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_22

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_22

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_22

    .line 180
    :cond_16
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    .line 181
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 182
    sub-long/2addr p1, v0

    .line 184
    :cond_21
    return-wide p1

    .line 178
    .end local v0  # "mod":J
    :cond_22
    :goto_22
    return-wide p1
.end method

.method public roundUp(J)J
    .registers 9
    .param p1, "time"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 161
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_23

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_23

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_23

    .line 165
    :cond_16
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v2, p1, v0

    .line 166
    .local v2, "mod":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_22

    .line 167
    sub-long/2addr p1, v2

    .line 168
    add-long/2addr p1, v0

    .line 170
    :cond_22
    return-wide p1

    .line 163
    .end local v2  # "mod":J
    :cond_23
    :goto_23
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 10
    .param p1, "out"  # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 498
    .local v0, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 499
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 500
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v3, :cond_2d

    .line 501
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 502
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v2  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3  # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    goto :goto_e

    .line 507
    :cond_31
    const v1, 0x414e4554

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 508
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 510
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 511
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 512
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 513
    .restart local v3  # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 515
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 516
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 517
    .local v5, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 518
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 519
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 520
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 521
    invoke-virtual {v6, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 522
    .end local v5  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v6  # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_6b

    .line 523
    .end local v2  # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3  # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_92
    goto :goto_4b

    .line 525
    :cond_93
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 526
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"  # J

    .line 691
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 693
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 694
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 697
    .local v4, "startStats":J
    const-wide v6, 0x10b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 698
    .local v8, "startKey":J
    iget-object v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v10, p1, v6, v7}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 699
    const-wide v6, 0x10500000002L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 700
    const-wide v6, 0x10500000003L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 701
    const-wide v6, 0x10500000004L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 702
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 705
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 706
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    const-wide v10, 0x10b00000002L

    invoke-virtual {v6, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 707
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 708
    .end local v3  # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v4  # "startStats":J
    .end local v6  # "history":Landroid/net/NetworkStatsHistory;
    .end local v8  # "startKey":J
    goto :goto_c

    .line 710
    :cond_64
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 711
    return-void
.end method
