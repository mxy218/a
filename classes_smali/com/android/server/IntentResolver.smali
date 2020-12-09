.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 828
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 852
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 861
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 866
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 872
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 877
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 572
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 573
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v0

    .line 574
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    aput-object p3, v0, v2

    goto :goto_35

    .line 577
    :cond_14
    array-length v3, v0

    .line 578
    move v4, v3

    .line 579
    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_21

    .line 580
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 582
    :cond_21
    if-ge v4, v3, :cond_26

    .line 583
    aput-object p3, v0, v4

    goto :goto_35

    .line 585
    :cond_26
    mul-int/lit8 v4, v3, 0x3

    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 586
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    aput-object p3, v1, v3

    .line 588
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :goto_35
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v14

    .line 733
    const/4 v4, 0x0

    const-string v15, "IntentResolver"

    if-eqz p3, :cond_2c

    .line 734
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v15, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 735
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v9, v4

    move-object v10, v5

    goto :goto_2f

    .line 737
    :cond_2c
    nop

    .line 738
    move-object v9, v4

    move-object v10, v9

    .line 741
    :goto_2f
    const/16 v16, 0x0

    if-eqz v1, :cond_36

    array-length v4, v1

    move v8, v4

    goto :goto_38

    :cond_36
    move/from16 v8, v16

    .line 742
    :goto_38
    nop

    .line 745
    move/from16 v7, v16

    move/from16 v17, v7

    :goto_3d
    if-ge v7, v8, :cond_1fd

    aget-object v5, v1, v7

    if-eqz v5, :cond_1fd

    .line 747
    if-eqz p3, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching against filter "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_59
    if-eqz v14, :cond_84

    invoke-virtual {v0, v5, v3}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 750
    if-eqz p3, :cond_76

    .line 751
    const-string v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 750
    :cond_76
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 757
    :cond_84
    if-eqz v13, :cond_c3

    invoke-virtual {v0, v13, v5}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    if-nez v4, :cond_c3

    .line 758
    if-eqz p3, :cond_b5

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 758
    :cond_b5
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 765
    :cond_c3
    invoke-virtual {v5}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    if-eqz v4, :cond_110

    .line 766
    if-eqz p3, :cond_110

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter verified: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    .line 769
    move/from16 v6, v16

    :goto_e9
    if-ge v6, v4, :cond_110

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p7

    move/from16 v4, v18

    goto :goto_e9

    .line 776
    :cond_110
    invoke-virtual {v0, v5, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_139

    .line 777
    if-eqz p3, :cond_12b

    .line 778
    const-string v1, "  Filter\'s target already added"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 777
    :cond_12b
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    move-object v13, v9

    move-object v12, v10

    goto/16 :goto_1ed

    .line 783
    :cond_139
    const-string v1, "IntentResolver"

    move-object v4, v5

    move-object v6, v5

    move-object v5, v11

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    const/4 v13, 0x1

    move-object v11, v6

    move-object/from16 v6, p5

    move/from16 v20, v7

    move-object/from16 v7, p6

    move/from16 v21, v8

    move-object v8, v12

    move-object v13, v9

    move-object/from16 v9, p2

    move-object/from16 v22, v12

    move-object v12, v10

    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 784
    if-ltz v1, :cond_1bb

    .line 785
    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_182

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_182
    if-eqz p4, :cond_18e

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18b

    goto :goto_18e

    .line 800
    :cond_18b
    const/16 v17, 0x1

    goto :goto_1ed

    .line 789
    :cond_18e
    :goto_18e
    invoke-virtual {v0, v11, v1, v3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v1

    .line 790
    if-eqz p3, :cond_1a8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Created result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1a8
    if-eqz v1, :cond_1ba

    .line 792
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    if-eqz p3, :cond_1ba

    .line 794
    const-string v1, "    "

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 795
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 796
    invoke-virtual {v11, v13, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 799
    :cond_1ba
    goto :goto_1ed

    .line 803
    :cond_1bb
    if-eqz p3, :cond_1ed

    .line 805
    const/4 v4, -0x4

    if-eq v1, v4, :cond_1d7

    const/4 v4, -0x3

    if-eq v1, v4, :cond_1d4

    const/4 v4, -0x2

    if-eq v1, v4, :cond_1d1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1cd

    .line 810
    const-string/jumbo v1, "unknown reason"

    goto :goto_1d9

    .line 809
    :cond_1cd
    const-string/jumbo v1, "type"

    goto :goto_1d9

    .line 808
    :cond_1d1
    const-string v1, "data"

    goto :goto_1d9

    .line 806
    :cond_1d4
    const-string v1, "action"

    goto :goto_1d9

    .line 807
    :cond_1d7
    const-string v1, "category"

    .line 812
    :goto_1d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter did not match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_1ed
    :goto_1ed
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v1, p7

    move-object v10, v12

    move-object v9, v13

    move-object/from16 v11, v18

    move-object/from16 v13, v19

    move/from16 v8, v21

    move-object/from16 v12, v22

    goto/16 :goto_3d

    .line 817
    :cond_1fd
    if-eqz p3, :cond_21b

    if-eqz v17, :cond_21b

    .line 818
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_20e

    .line 819
    const-string/jumbo v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 820
    :cond_20e
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_21b

    .line 821
    const-string/jumbo v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_21b
    :goto_21b
    return-void
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 149
    nop

    .line 150
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 151
    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 152
    aget-object v2, p1, v1

    .line 153
    if-nez v2, :cond_d

    .line 154
    goto :goto_20

    .line 156
    :cond_d
    invoke-static {v2, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 157
    if-nez v0, :cond_1a

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 164
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 6

    .line 75
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 77
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 78
    return v2

    .line 80
    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 82
    return v2

    .line 80
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 85
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 87
    if-eq v0, v1, :cond_28

    .line 88
    return v2

    .line 90
    :cond_28
    move v1, v2

    :goto_29
    if-ge v1, v0, :cond_39

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 92
    return v2

    .line 90
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 95
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 96
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 97
    if-eq v0, v1, :cond_44

    .line 98
    return v2

    .line 100
    :cond_44
    move v1, v2

    :goto_45
    if-ge v1, v0, :cond_55

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 102
    return v2

    .line 100
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 105
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 107
    if-eq v0, v1, :cond_60

    .line 108
    return v2

    .line 110
    :cond_60
    move v1, v2

    :goto_61
    if-ge v1, v0, :cond_71

    .line 111
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 112
    return v2

    .line 110
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 115
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 117
    if-eq v0, v1, :cond_7c

    .line 118
    return v2

    .line 120
    :cond_7c
    move v1, v2

    :goto_7d
    if-ge v1, v0, :cond_8d

    .line 121
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 122
    return v2

    .line 120
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 125
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 127
    if-eq v0, v1, :cond_98

    .line 128
    return v2

    .line 130
    :cond_98
    move v1, v2

    :goto_99
    if-ge v1, v0, :cond_a9

    .line 131
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 132
    return v2

    .line 130
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 135
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 137
    if-eq v0, v1, :cond_b4

    .line 138
    return v2

    .line 140
    :cond_b4
    move v1, v2

    :goto_b5
    if-ge v1, v0, :cond_c5

    .line 141
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 142
    return v2

    .line 140
    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 145
    :cond_c5
    const/4 p0, 0x1

    return p0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    .line 716
    if-nez p0, :cond_8

    .line 717
    const/4 p0, 0x0

    return-object p0

    .line 719
    :cond_8
    new-instance v0, Landroid/util/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 656
    const/4 p4, 0x0

    if-nez p2, :cond_4

    .line 657
    return p4

    .line 660
    :cond_4
    nop

    .line 661
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 662
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    add-int/lit8 p4, p4, 0x1

    .line 665
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 666
    goto :goto_5

    .line 667
    :cond_17
    return p4
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 595
    const/4 v0, 0x0

    if-nez p2, :cond_8

    .line 596
    return v0

    .line 599
    :cond_8
    move v1, v0

    .line 600
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 601
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 602
    add-int/lit8 v1, v1, 0x1

    .line 604
    nop

    .line 605
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 606
    if-lez v3, :cond_29

    .line 607
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3d

    .line 609
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 612
    :goto_3d
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 614
    if-lez v3, :cond_4a

    .line 615
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_4f

    .line 617
    :cond_4a
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 619
    :goto_4f
    goto :goto_9

    .line 621
    :cond_50
    return v1
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 688
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 689
    if-eqz v0, :cond_46

    .line 690
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 691
    :goto_b
    if-ltz v1, :cond_14

    aget-object v2, v0, v1

    if-nez v2, :cond_14

    .line 692
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 694
    :cond_14
    move v2, v1

    :goto_15
    if-ltz v1, :cond_2c

    .line 695
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_29

    .line 696
    sub-int v3, v2, v1

    .line 697
    if-lez v3, :cond_24

    .line 698
    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    :cond_24
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 701
    add-int/lit8 v2, v2, -0x1

    .line 694
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 704
    :cond_2c
    if-gez v2, :cond_32

    .line 705
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 706
    :cond_32
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_46

    .line 707
    add-int/lit8 p3, v2, 0x2

    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object p3

    .line 708
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_46
    :goto_46
    return-void
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 672
    const/4 p4, 0x0

    if-nez p2, :cond_4

    .line 673
    return p4

    .line 676
    :cond_4
    nop

    .line 677
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 678
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    add-int/lit8 p4, p4, 0x1

    .line 681
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    goto :goto_5

    .line 683
    :cond_17
    return p4
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 626
    const/4 v0, 0x0

    if-nez p2, :cond_8

    .line 627
    return v0

    .line 630
    :cond_8
    move v1, v0

    .line 631
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 632
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 633
    add-int/lit8 v1, v1, 0x1

    .line 635
    nop

    .line 636
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 637
    if-lez v3, :cond_29

    .line 638
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3d

    .line 640
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 643
    :goto_3d
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    if-lez v3, :cond_4a

    .line 646
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4f

    .line 648
    :cond_4a
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    :goto_4f
    goto :goto_9

    .line 651
    :cond_50
    return v1
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 63
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 64
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 65
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 68
    :cond_26
    if-eqz v1, :cond_33

    .line 69
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 72
    :cond_33
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 505
    const/4 p1, 0x1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 20

    .line 310
    move-object v9, p0

    move-object/from16 v0, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 313
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 315
    move-object v12, v11

    .line 317
    :cond_4d
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 319
    move-object v12, v11

    .line 321
    :cond_62
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 323
    move-object v12, v11

    .line 325
    :cond_77
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 327
    move-object v12, v11

    .line 329
    :cond_8c
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 331
    move-object v12, v11

    .line 333
    :cond_a1
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 335
    move-object v12, v11

    .line 337
    :cond_b6
    if-ne v12, v11, :cond_ba

    const/4 v0, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    return v0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 559
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 568
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    nop

    .line 224
    nop

    .line 225
    move-object/from16 v12, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_38
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v10, v14, :cond_151

    .line 226
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/IntentFilter;

    .line 227
    array-length v15, v14

    .line 228
    nop

    .line 230
    const-string v8, ":"

    if-eqz p8, :cond_df

    if-nez p7, :cond_df

    .line 231
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 232
    const/4 v9, 0x0

    :goto_50
    if-ge v9, v15, :cond_98

    move-object/from16 v16, v12

    aget-object v12, v14, v9

    if-eqz v12, :cond_95

    .line 233
    if-eqz v4, :cond_66

    invoke-virtual {v0, v4, v12}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-nez v17, :cond_66

    .line 234
    move/from16 v18, v11

    move-object/from16 v17, v13

    const/4 v11, 0x1

    goto :goto_8c

    .line 236
    :cond_66
    invoke-virtual {v0, v12}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v12

    .line 237
    move-object/from16 v17, v13

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v13

    .line 238
    if-gez v13, :cond_7e

    .line 239
    new-instance v13, Landroid/util/MutableInt;

    move/from16 v18, v11

    const/4 v11, 0x1

    invoke-direct {v13, v11}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 241
    :cond_7e
    move/from16 v18, v11

    const/4 v11, 0x1

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/MutableInt;

    iget v13, v12, Landroid/util/MutableInt;->value:I

    add-int/2addr v13, v11

    iput v13, v12, Landroid/util/MutableInt;->value:I

    .line 232
    :goto_8c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v11, v18

    goto :goto_50

    :cond_95
    move/from16 v18, v11

    goto :goto_9c

    :cond_98
    move/from16 v18, v11

    move-object/from16 v16, v12

    :goto_9c
    move-object/from16 v17, v13

    const/4 v11, 0x1

    .line 244
    move-object/from16 v12, v16

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_a3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_d9

    .line 245
    if-eqz v12, :cond_b2

    .line 246
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const/4 v12, 0x0

    .line 249
    :cond_b2
    if-nez v13, :cond_c4

    .line 250
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    move v13, v11

    .line 253
    :cond_c4
    nop

    .line 254
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/MutableInt;

    iget v15, v15, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 244
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v11

    goto :goto_a3

    :cond_d9
    move-object/from16 v13, v17

    move/from16 v11, v18

    goto/16 :goto_149

    .line 230
    :cond_df
    move/from16 v18, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    const/4 v11, 0x1

    .line 257
    move-object/from16 v12, v16

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_ea
    if-ge v9, v15, :cond_145

    aget-object v11, v14, v9

    if-eqz v11, :cond_145

    .line 258
    if-eqz v4, :cond_f9

    invoke-virtual {v0, v4, v11}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v16

    if-nez v16, :cond_f9

    .line 259
    goto :goto_13d

    .line 261
    :cond_f9
    if-eqz v12, :cond_102

    .line 262
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const/4 v12, 0x0

    .line 265
    :cond_102
    if-nez v13, :cond_114

    .line 266
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const/4 v13, 0x1

    .line 269
    :cond_114
    nop

    .line 270
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 271
    if-eqz p7, :cond_13b

    .line 272
    if-nez v17, :cond_122

    .line 273
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    goto :goto_124

    .line 272
    :cond_122
    move-object/from16 v0, v17

    .line 275
    :goto_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move-object/from16 v17, v0

    const/16 v18, 0x1

    goto :goto_13d

    .line 271
    :cond_13b
    const/16 v18, 0x1

    .line 257
    :goto_13d
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_ea

    .line 225
    :cond_145
    move-object/from16 v13, v17

    move/from16 v11, v18

    :goto_149
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_38

    .line 280
    :cond_151
    move/from16 v18, v11

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 556
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    const-string p1, "IntentFilter"

    return-object p1
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 170
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 171
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 173
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 174
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 175
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 177
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 179
    :cond_59
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 181
    invoke-static {v2, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 182
    if-nez v0, :cond_79

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :cond_79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_7c
    goto :goto_60

    .line 188
    :cond_7d
    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 514
    const/4 p1, 0x0

    return p1
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result p1

    return p1
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 544
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 400
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 402
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 404
    nop

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v14, 0x0

    if-eqz v0, :cond_19

    const/4 v15, 0x1

    goto :goto_1a

    :cond_19
    move v15, v14

    .line 407
    :goto_1a
    const-string v9, "IntentResolver"

    if-eqz v15, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_59
    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v7, p4

    .line 411
    :goto_5f
    nop

    .line 412
    nop

    .line 413
    nop

    .line 414
    nop

    .line 418
    if-eqz v11, :cond_164

    .line 419
    const/16 v2, 0x2f

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 420
    if-lez v2, :cond_164

    .line 421
    invoke-virtual {v11, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 422
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_137

    .line 423
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v2, 0x2

    const-string v14, "Second type cut: "

    const-string v1, "First type cut: "

    if-ne v5, v0, :cond_d1

    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 424
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_90

    goto :goto_d1

    .line 434
    :cond_90
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 435
    if-eqz v15, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_b0
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 437
    if-eqz v15, :cond_111

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 427
    :cond_d1
    :goto_d1
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 428
    if-eqz v15, :cond_f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_f1
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 430
    if-eqz v15, :cond_111

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_111
    :goto_111
    iget-object v2, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 443
    if-eqz v15, :cond_133

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Third type cut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_133
    move-object v14, v1

    move-object/from16 v17, v2

    goto :goto_168

    .line 444
    :cond_137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_164

    .line 448
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 449
    if-eqz v15, :cond_165

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typed Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 457
    :cond_164
    const/4 v0, 0x0

    :cond_165
    :goto_165
    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_168
    if-eqz v12, :cond_18f

    .line 458
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 459
    if-eqz v15, :cond_18c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_18c
    move-object/from16 v16, v1

    goto :goto_191

    .line 457
    :cond_18f
    const/16 v16, 0x0

    .line 465
    :goto_191
    if-nez v11, :cond_1c1

    if-nez v12, :cond_1c1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c1

    .line 466
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 467
    if-eqz v15, :cond_1c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1c1
    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v19

    .line 471
    if-eqz v18, :cond_1df

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move-object v11, v9

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    goto :goto_1e0

    .line 471
    :cond_1df
    move-object v11, v9

    .line 475
    :goto_1e0
    if-eqz v14, :cond_1f5

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v14

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 479
    :cond_1f5
    if-eqz v17, :cond_20b

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 483
    :cond_20b
    if-eqz v16, :cond_221

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 487
    :cond_221
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 488
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 490
    if-eqz v15, :cond_250

    .line 491
    const-string v0, "Final result list:"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    :goto_22f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_250

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_22f

    .line 496
    :cond_250
    return-object v13
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 381
    move-object/from16 v10, p0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 383
    nop

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v12, v0

    goto :goto_15

    :cond_14
    move v12, v1

    .line 386
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v13

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 388
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 389
    move v9, v1

    :goto_22
    if-ge v9, v15, :cond_44

    .line 390
    nop

    .line 391
    move-object/from16 v8, p4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/content/IntentFilter;

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v14

    move-object v8, v11

    move/from16 v16, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 389
    add-int/lit8 v9, v16, 0x1

    goto :goto_22

    .line 393
    :cond_44
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 394
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 395
    return-object v11
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 206
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 207
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 208
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 211
    :cond_21
    if-eqz v1, :cond_2e

    .line 212
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 215
    :cond_2e
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 549
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 550
    return-void
.end method

.method writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 285
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_3d

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 287
    const-wide v5, 0x10900000001L

    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/IntentFilter;

    array-length v6, v5

    move v7, v1

    :goto_22
    if-ge v7, v6, :cond_37

    aget-object v8, v5, v7

    .line 289
    if-eqz v8, :cond_34

    .line 290
    const-wide v9, 0x20900000002L

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 293
    :cond_37
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 295
    :cond_3d
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 298
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 299
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000001L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000002L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000003L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000004L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000005L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000006L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 305
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 306
    return-void
.end method
