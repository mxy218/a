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

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
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
    .param p2, "name"  # Ljava/lang/String;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 572
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
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
    .local v3, "N":I
    move v4, v3

    .line 579
    .local v4, "i":I
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
    mul-int/lit8 v5, v3, 0x3

    div-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 586
    .local v1, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    aput-object p3, v1, v3

    .line 588
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .end local v1  # "newa":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3  # "N":I
    .end local v4  # "i":I
    :goto_35
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 32
    .param p1, "intent"  # Landroid/content/Intent;
    .param p3, "debug"  # Z
    .param p4, "defaultOnly"  # Z
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "scheme"  # Ljava/lang/String;
    .param p9, "userId"  # I
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 726
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 727
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v14

    .line 733
    .local v14, "excludingStopped":Z
    const-string v15, "IntentResolver"

    if-eqz p3, :cond_2b

    .line 734
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v15, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 735
    .local v4, "logPrinter":Landroid/util/Printer;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v10, v4

    move-object v9, v5

    .local v5, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_2f

    .line 737
    .end local v4  # "logPrinter":Landroid/util/Printer;
    .end local v5  # "logPrintWriter":Ljava/io/PrintWriter;
    :cond_2b
    const/4 v4, 0x0

    .line 738
    .restart local v4  # "logPrinter":Landroid/util/Printer;
    const/4 v5, 0x0

    move-object v10, v4

    move-object v9, v5

    .line 741
    .end local v4  # "logPrinter":Landroid/util/Printer;
    .local v9, "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrinter":Landroid/util/Printer;
    :goto_2f
    if-eqz v1, :cond_33

    array-length v4, v1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    move v8, v4

    .line 742
    .local v8, "N":I
    const/4 v4, 0x0

    .line 745
    .local v4, "hasNonDefaults":Z
    const/4 v5, 0x0

    move/from16 v16, v4

    move v7, v5

    .end local v4  # "hasNonDefaults":Z
    .local v7, "i":I
    .local v16, "hasNonDefaults":Z
    :goto_3a
    if-ge v7, v8, :cond_20f

    aget-object v4, v1, v7

    move-object v6, v4

    .local v6, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v4, :cond_201

    .line 747
    if-eqz p3, :cond_57

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matching against filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_57
    if-eqz v14, :cond_84

    invoke-virtual {v0, v6, v3}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 750
    if-eqz p3, :cond_75

    .line 751
    const-string v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 750
    :cond_75
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 757
    :cond_84
    if-eqz v13, :cond_c5

    invoke-virtual {v0, v13, v6}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    if-nez v4, :cond_c5

    .line 758
    if-eqz p3, :cond_b6

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

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 758
    :cond_b6
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 765
    :cond_c5
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 766
    if-eqz p3, :cond_113

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter verified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    .line 769
    .local v4, "authorities":I
    const/4 v5, 0x0

    .local v5, "z":I
    :goto_ea
    if-ge v5, v4, :cond_111

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4  # "authorities":I
    .local v17, "authorities":I
    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p7

    move/from16 v4, v17

    goto :goto_ea

    .end local v17  # "authorities":I
    .restart local v4  # "authorities":I
    :cond_111
    move/from16 v17, v4

    .line 776
    .end local v4  # "authorities":I
    .end local v5  # "z":I
    :cond_113
    invoke-virtual {v0, v6, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_13e

    .line 777
    if-eqz p3, :cond_12f

    .line 778
    const-string v1, "  Filter\'s target already added"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 777
    :cond_12f
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1f1

    .line 783
    :cond_13e
    const-string v1, "IntentResolver"

    move-object v4, v6

    move-object v5, v11

    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6  # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v17, "action":Ljava/lang/String;
    move-object/from16 v6, p5

    move/from16 v18, v7

    .end local v7  # "i":I
    .local v18, "i":I
    move-object/from16 v7, p6

    move/from16 v19, v8

    .end local v8  # "N":I
    .local v19, "N":I
    move-object v8, v12

    move-object/from16 v20, v12

    move-object v12, v9

    .end local v9  # "logPrintWriter":Ljava/io/PrintWriter;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v20, "data":Landroid/net/Uri;
    move-object/from16 v9, p2

    move-object/from16 v21, v13

    move-object v13, v10

    .end local v10  # "logPrinter":Landroid/util/Printer;
    .local v13, "logPrinter":Landroid/util/Printer;
    .local v21, "packageName":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 784
    .local v1, "match":I
    if-ltz v1, :cond_1bf

    .line 785
    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_185

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
    :cond_185
    if-eqz p4, :cond_192

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18e

    goto :goto_192

    .line 800
    :cond_18e
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16  # "hasNonDefaults":Z
    .local v4, "hasNonDefaults":Z
    goto :goto_1f1

    .line 789
    .end local v4  # "hasNonDefaults":Z
    .restart local v16  # "hasNonDefaults":Z
    :cond_192
    :goto_192
    invoke-virtual {v0, v11, v1, v3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v4

    .line 790
    .local v4, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz p3, :cond_1ac

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Created result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1ac
    if-eqz v4, :cond_1be

    .line 792
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    if-eqz p3, :cond_1be

    .line 794
    const-string v5, "    "

    invoke-virtual {v0, v12, v5, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 795
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 796
    invoke-virtual {v11, v13, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 799
    .end local v4  # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_1be
    goto :goto_1f1

    .line 803
    :cond_1bf
    if-eqz p3, :cond_1f1

    .line 805
    const/4 v4, -0x4

    if-eq v1, v4, :cond_1db

    const/4 v4, -0x3

    if-eq v1, v4, :cond_1d8

    const/4 v4, -0x2

    if-eq v1, v4, :cond_1d5

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1d1

    .line 810
    const-string/jumbo v4, "unknown reason"

    .local v4, "reason":Ljava/lang/String;
    goto :goto_1dd

    .line 809
    .end local v4  # "reason":Ljava/lang/String;
    :cond_1d1
    const-string/jumbo v4, "type"

    .restart local v4  # "reason":Ljava/lang/String;
    goto :goto_1dd

    .line 808
    .end local v4  # "reason":Ljava/lang/String;
    :cond_1d5
    const-string v4, "data"

    .restart local v4  # "reason":Ljava/lang/String;
    goto :goto_1dd

    .line 806
    .end local v4  # "reason":Ljava/lang/String;
    :cond_1d8
    const-string v4, "action"

    .restart local v4  # "reason":Ljava/lang/String;
    goto :goto_1dd

    .line 807
    .end local v4  # "reason":Ljava/lang/String;
    :cond_1db
    const-string v4, "category"

    .line 812
    .restart local v4  # "reason":Ljava/lang/String;
    :goto_1dd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter did not match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v1  # "match":I
    .end local v4  # "reason":Ljava/lang/String;
    :cond_1f1
    :goto_1f1
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p7

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v17

    move/from16 v8, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    .end local v18  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_3a

    .end local v17  # "action":Ljava/lang/String;
    .end local v19  # "N":I
    .end local v20  # "data":Landroid/net/Uri;
    .end local v21  # "packageName":Ljava/lang/String;
    .restart local v6  # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v8  # "N":I
    .restart local v9  # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10  # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_201
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    .end local v6  # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v7  # "i":I
    .end local v8  # "N":I
    .end local v9  # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10  # "logPrinter":Landroid/util/Printer;
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v17  # "action":Ljava/lang/String;
    .restart local v18  # "i":I
    .restart local v19  # "N":I
    .restart local v20  # "data":Landroid/net/Uri;
    .restart local v21  # "packageName":Ljava/lang/String;
    goto :goto_21b

    .end local v17  # "action":Ljava/lang/String;
    .end local v18  # "i":I
    .end local v19  # "N":I
    .end local v20  # "data":Landroid/net/Uri;
    .end local v21  # "packageName":Ljava/lang/String;
    .restart local v7  # "i":I
    .restart local v8  # "N":I
    .restart local v9  # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10  # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_20f
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v12, v9

    move-object v13, v10

    .line 817
    .end local v7  # "i":I
    .end local v8  # "N":I
    .end local v9  # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10  # "logPrinter":Landroid/util/Printer;
    .end local v11  # "action":Ljava/lang/String;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v17  # "action":Ljava/lang/String;
    .restart local v18  # "i":I
    .restart local v19  # "N":I
    .restart local v20  # "data":Landroid/net/Uri;
    .restart local v21  # "packageName":Ljava/lang/String;
    :goto_21b
    if-eqz p3, :cond_239

    if-eqz v16, :cond_239

    .line 818
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_22c

    .line 819
    const-string/jumbo v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_239

    .line 820
    :cond_22c
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_239

    .line 821
    const-string/jumbo v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_239
    :goto_239
    return-void
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .param p2, "matching"  # Landroid/content/IntentFilter;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v0, 0x0

    .line 150
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_20

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 152
    aget-object v2, p1, v1

    .line 153
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v2, :cond_c

    .line 154
    goto :goto_20

    .line 156
    :cond_c
    invoke-static {v2, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 157
    if-nez v0, :cond_1a

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 160
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2  # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 164
    .end local v1  # "i":I
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 7
    .param p0, "f1"  # Landroid/content/IntentFilter;
    .param p1, "f2"  # Landroid/content/IntentFilter;

    .line 75
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 76
    .local v0, "s1":I
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 77
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 78
    return v2

    .line 80
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1d

    .line 81
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 82
    return v2

    .line 80
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 85
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_29
    if-ge v3, v0, :cond_39

    .line 91
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 92
    return v2

    .line 90
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 95
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_45
    if-ge v3, v0, :cond_55

    .line 101
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 102
    return v2

    .line 100
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 105
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_61
    if-ge v3, v0, :cond_71

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 112
    return v2

    .line 110
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 115
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_7d
    if-ge v3, v0, :cond_8d

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 122
    return v2

    .line 120
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 125
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_99
    if-ge v3, v0, :cond_a9

    .line 131
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 132
    return v2

    .line 130
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 135
    .end local v3  # "i":I
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
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_b5
    if-ge v3, v0, :cond_c5

    .line 141
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 142
    return v2

    .line 140
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 145
    .end local v3  # "i":I
    :cond_c5
    const/4 v2, 0x1

    return v2
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 4
    .param p0, "intent"  # Landroid/content/Intent;
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

    move-result-object v0

    .line 716
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 717
    const/4 v1, 0x0

    return-object v1

    .line 719
    :cond_8
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"  # Ljava/lang/String;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 657
    const/4 v0, 0x0

    return v0

    .line 660
    :cond_4
    const/4 v0, 0x0

    .line 661
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 662
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 663
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 665
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 666
    .end local v1  # "name":Ljava/lang/String;
    goto :goto_5

    .line 667
    :cond_17
    return v0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 594
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 595
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 596
    return v1

    .line 599
    :cond_8
    const/4 v2, 0x0

    .line 600
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 602
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 604
    move-object v4, v3

    .line 605
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 606
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 607
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 609
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    :goto_3a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 614
    if-lez v5, :cond_47

    .line 615
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_4c

    .line 617
    :cond_47
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 619
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "baseName":Ljava/lang/String;
    .end local v5  # "slashpos":I
    :goto_4c
    goto :goto_9

    .line 621
    :cond_4d
    return v2
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "object"  # Ljava/lang/Object;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 689
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v0, :cond_46

    .line 690
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 691
    .local v1, "LAST":I
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

    .local v2, "idx":I
    :goto_15
    if-ltz v2, :cond_2c

    .line 695
    aget-object v3, v0, v2

    if-ne v3, p3, :cond_29

    .line 696
    sub-int v3, v1, v2

    .line 697
    .local v3, "remain":I
    if-lez v3, :cond_24

    .line 698
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    :cond_24
    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 701
    add-int/lit8 v1, v1, -0x1

    .line 694
    .end local v3  # "remain":I
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 704
    .end local v2  # "idx":I
    :cond_2c
    if-gez v1, :cond_32

    .line 705
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 706
    :cond_32
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_46

    .line 707
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v2

    .line 708
    .local v2, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .end local v1  # "LAST":I
    .end local v2  # "newa":[Landroid/content/IntentFilter;, "[TF;"
    :cond_46
    :goto_46
    return-void
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"  # Ljava/lang/String;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 673
    const/4 v0, 0x0

    return v0

    .line 676
    :cond_4
    const/4 v0, 0x0

    .line 677
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 678
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 679
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 681
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    .end local v1  # "name":Ljava/lang/String;
    goto :goto_5

    .line 683
    :cond_17
    return v0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 625
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 627
    return v1

    .line 630
    :cond_8
    const/4 v2, 0x0

    .line 631
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 632
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 635
    move-object v4, v3

    .line 636
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 637
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 638
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 640
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    :goto_3a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    if-lez v5, :cond_47

    .line 646
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4c

    .line 648
    :cond_47
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "baseName":Ljava/lang/String;
    .end local v5  # "slashpos":I
    :goto_4c
    goto :goto_9

    .line 651
    :cond_4d
    return v2
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
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
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "numT":I
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 65
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 68
    :cond_26
    if-eqz v1, :cond_33

    .line 69
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 72
    :cond_33
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 505
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "title"  # Ljava/lang/String;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "printFilter"  # Z
    .param p6, "collapseDuplicates"  # Z

    .line 310
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object v9, p0

    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, "curPrefix":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 315
    move-object v0, v12

    move-object v14, v0

    .line 317
    :cond_50
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 319
    move-object v0, v12

    move-object v14, v0

    .line 321
    :cond_67
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 323
    move-object v0, v12

    move-object v14, v0

    .line 325
    :cond_7e
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 327
    move-object v0, v12

    move-object v14, v0

    .line 329
    :cond_95
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 331
    move-object v0, v12

    move-object v14, v0

    .line 333
    :cond_ac
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 335
    move-object v14, v12

    .line 337
    :cond_c2
    if-ne v14, v12, :cond_c6

    const/4 v0, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    return v0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "label"  # Ljava/lang/Object;
    .param p4, "count"  # I

    .line 567
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 568
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 31
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"  # Ljava/lang/String;
    .param p3, "title"  # Ljava/lang/String;
    .param p4, "prefix"  # Ljava/lang/String;
    .param p6, "packageName"  # Ljava/lang/String;
    .param p7, "printFilter"  # Z
    .param p8, "collapseDuplicates"  # Z
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
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
    .local v5, "eprefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v9, 0x0

    .line 224
    .local v9, "printedSomething":Z
    const/4 v10, 0x0

    .line 225
    .local v10, "printer":Landroid/util/Printer;
    const/4 v11, 0x0

    move-object v12, v10

    move-object/from16 v10, p3

    .end local p3  # "title":Ljava/lang/String;
    .local v10, "title":Ljava/lang/String;
    .local v11, "mapi":I
    .local v12, "printer":Landroid/util/Printer;
    :goto_37
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v11, v13, :cond_189

    .line 226
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/IntentFilter;

    .line 227
    .local v13, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v14, v13

    .line 228
    .local v14, "N":I
    const/4 v15, 0x0

    .line 230
    .local v15, "printedHeader":Z
    const-string v2, ":"

    if-eqz p8, :cond_101

    if-nez p7, :cond_101

    .line 231
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 232
    const/16 v16, 0x0

    move-object/from16 p3, v10

    move/from16 v10, v16

    .local v10, "i":I
    .restart local p3  # "title":Ljava/lang/String;
    :goto_54
    if-ge v10, v14, :cond_b6

    aget-object v16, v13, v10

    move-object/from16 v17, v16

    .local v17, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v16, :cond_ab

    .line 233
    if-eqz v4, :cond_71

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .end local v17  # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v16, "printer":Landroid/util/Printer;
    invoke-virtual {v0, v4, v12}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-nez v17, :cond_75

    .line 234
    move-object/from16 v20, v6

    move/from16 v19, v9

    move-object/from16 v18, v12

    move/from16 v17, v15

    goto :goto_a0

    .line 233
    .end local v16  # "printer":Landroid/util/Printer;
    .local v12, "printer":Landroid/util/Printer;
    .restart local v17  # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_71
    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .line 236
    .end local v17  # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v16  # "printer":Landroid/util/Printer;
    :cond_75
    move/from16 v17, v15

    .end local v15  # "printedHeader":Z
    .local v17, "printedHeader":Z
    invoke-virtual {v0, v12}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v15

    .line 237
    .local v15, "label":Ljava/lang/Object;
    move-object/from16 v18, v12

    .end local v12  # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v18, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v12

    .line 238
    .local v12, "index":I
    move/from16 v19, v9

    .end local v9  # "printedSomething":Z
    .local v19, "printedSomething":Z
    const/4 v9, 0x1

    if-gez v12, :cond_91

    .line 239
    move-object/from16 v20, v6

    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v9}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v8, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0

    .line 241
    :cond_91
    move-object/from16 v20, v6

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    move/from16 v21, v12

    .end local v12  # "index":I
    .local v21, "index":I
    iget v12, v6, Landroid/util/MutableInt;->value:I

    add-int/2addr v12, v9

    iput v12, v6, Landroid/util/MutableInt;->value:I

    .line 232
    .end local v15  # "label":Ljava/lang/Object;
    .end local v21  # "index":I
    :goto_a0
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, v16

    move/from16 v15, v17

    move/from16 v9, v19

    move-object/from16 v6, v20

    goto :goto_54

    .end local v16  # "printer":Landroid/util/Printer;
    .end local v18  # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v19  # "printedSomething":Z
    .restart local v9  # "printedSomething":Z
    .local v12, "printer":Landroid/util/Printer;
    .local v15, "printedHeader":Z
    .local v17, "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_ab
    move-object/from16 v20, v6

    move/from16 v19, v9

    move-object/from16 v16, v12

    move-object/from16 v18, v17

    move/from16 v17, v15

    .end local v9  # "printedSomething":Z
    .end local v12  # "printer":Landroid/util/Printer;
    .end local v15  # "printedHeader":Z
    .restart local v16  # "printer":Landroid/util/Printer;
    .local v17, "printedHeader":Z
    .restart local v18  # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v19  # "printedSomething":Z
    goto :goto_be

    .end local v16  # "printer":Landroid/util/Printer;
    .end local v17  # "printedHeader":Z
    .end local v18  # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v19  # "printedSomething":Z
    .restart local v9  # "printedSomething":Z
    .restart local v12  # "printer":Landroid/util/Printer;
    .restart local v15  # "printedHeader":Z
    :cond_b6
    move-object/from16 v20, v6

    move/from16 v19, v9

    move-object/from16 v16, v12

    move/from16 v17, v15

    .line 244
    .end local v9  # "printedSomething":Z
    .end local v10  # "i":I
    .end local v12  # "printer":Landroid/util/Printer;
    .end local v15  # "printedHeader":Z
    .restart local v16  # "printer":Landroid/util/Printer;
    .restart local v17  # "printedHeader":Z
    .restart local v19  # "printedSomething":Z
    :goto_be
    const/4 v6, 0x0

    move-object/from16 v9, p3

    .end local p3  # "title":Ljava/lang/String;
    .local v6, "i":I
    .local v9, "title":Ljava/lang/String;
    :goto_c1
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v6, v10, :cond_f8

    .line 245
    if-eqz v9, :cond_d0

    .line 246
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const/4 v9, 0x0

    .line 249
    :cond_d0
    if-nez v17, :cond_e4

    .line 250
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    const/4 v10, 0x1

    move/from16 v17, v10

    .line 253
    :cond_e4
    const/16 v19, 0x1

    .line 254
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/MutableInt;

    iget v12, v12, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v7, v10, v12}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    :cond_f8
    move-object v10, v9

    move-object/from16 v12, v16

    move/from16 v9, v19

    move-object/from16 v1, v20

    .end local v6  # "i":I
    goto/16 :goto_17e

    .line 230
    .end local v16  # "printer":Landroid/util/Printer;
    .end local v17  # "printedHeader":Z
    .end local v19  # "printedSomething":Z
    .local v9, "printedSomething":Z
    .local v10, "title":Ljava/lang/String;
    .restart local v12  # "printer":Landroid/util/Printer;
    .restart local v15  # "printedHeader":Z
    :cond_101
    move-object/from16 v20, v6

    move/from16 v19, v9

    move-object/from16 p3, v10

    move-object/from16 v16, v12

    move/from16 v17, v15

    .line 257
    .end local v9  # "printedSomething":Z
    .end local v10  # "title":Ljava/lang/String;
    .end local v12  # "printer":Landroid/util/Printer;
    .end local v15  # "printedHeader":Z
    .restart local v16  # "printer":Landroid/util/Printer;
    .restart local v17  # "printedHeader":Z
    .restart local v19  # "printedSomething":Z
    .restart local p3  # "title":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v9, p3

    .end local p3  # "title":Ljava/lang/String;
    .restart local v6  # "i":I
    .local v9, "title":Ljava/lang/String;
    :goto_10e
    if-ge v6, v14, :cond_177

    aget-object v10, v13, v6

    move-object v12, v10

    .local v12, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v10, :cond_174

    .line 258
    if-eqz v4, :cond_120

    invoke-virtual {v0, v4, v12}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v10

    if-nez v10, :cond_120

    .line 259
    move-object/from16 v1, v20

    goto :goto_16b

    .line 261
    :cond_120
    if-eqz v9, :cond_129

    .line 262
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const/4 v9, 0x0

    .line 265
    :cond_129
    if-nez v17, :cond_13c

    .line 266
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const/16 v17, 0x1

    .line 269
    :cond_13c
    const/4 v10, 0x1

    .line 270
    .end local v19  # "printedSomething":Z
    .local v10, "printedSomething":Z
    invoke-virtual {v0, v1, v7, v12}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 271
    if-eqz p7, :cond_167

    .line 272
    if-nez v16, :cond_14c

    .line 273
    new-instance v15, Landroid/util/PrintWriterPrinter;

    invoke-direct {v15, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object/from16 v16, v15

    goto :goto_14e

    .line 272
    :cond_14c
    move-object/from16 v15, v16

    .line 275
    .end local v16  # "printer":Landroid/util/Printer;
    .local v15, "printer":Landroid/util/Printer;
    :goto_14e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move/from16 v19, v10

    move-object/from16 v16, v15

    goto :goto_16b

    .line 271
    .end local v15  # "printer":Landroid/util/Printer;
    .restart local v16  # "printer":Landroid/util/Printer;
    :cond_167
    move-object/from16 v1, v20

    move/from16 v19, v10

    .line 257
    .end local v10  # "printedSomething":Z
    .restart local v19  # "printedSomething":Z
    :goto_16b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    goto :goto_10e

    :cond_174
    move-object/from16 v1, v20

    goto :goto_179

    .end local v12  # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_177
    move-object/from16 v1, v20

    .line 225
    .end local v6  # "i":I
    .end local v13  # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v14  # "N":I
    .end local v17  # "printedHeader":Z
    :goto_179
    move-object v10, v9

    move-object/from16 v12, v16

    move/from16 v9, v19

    .end local v16  # "printer":Landroid/util/Printer;
    .end local v19  # "printedSomething":Z
    .local v9, "printedSomething":Z
    .local v10, "title":Ljava/lang/String;
    .local v12, "printer":Landroid/util/Printer;
    :goto_17e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object v6, v1

    move-object/from16 v1, p1

    goto/16 :goto_37

    :cond_189
    move/from16 v19, v9

    .line 280
    .end local v9  # "printedSomething":Z
    .end local v11  # "mapi":I
    .restart local v19  # "printedSomething":Z
    return v19
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "matching"  # Landroid/content/IntentFilter;
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
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

    move-result-object v0

    return-object v0

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

    move-result-object v0

    return-object v0

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

    move-result-object v0

    return-object v0

    .line 179
    :cond_59
    const/4 v0, 0x0

    .line 180
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 181
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-static {v2, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 182
    if-nez v0, :cond_7a

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 185
    :cond_7a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v2  # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_7d
    goto :goto_60

    .line 188
    :cond_7e
    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 514
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
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
    .param p2, "match"  # I
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 26
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "defaultOnly"  # Z
    .param p4, "userId"  # I
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 404
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    move v14, v0

    .line 407
    .local v14, "debug":Z
    const-string v15, "IntentResolver"

    if-eqz v14, :cond_5b

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

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_5b
    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v8, p4

    .line 411
    :goto_61
    const/4 v0, 0x0

    .line 412
    .local v0, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    .line 413
    .local v2, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v3, 0x0

    .line 414
    .local v3, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v4, 0x0

    .line 418
    .local v4, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v11, :cond_180

    .line 419
    const/16 v5, 0x2f

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 420
    .local v5, "slashpos":I
    if-lez v5, :cond_177

    .line 421
    invoke-virtual {v11, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "baseType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_142

    .line 423
    move-object/from16 v16, v0

    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v16, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v17, v2

    .end local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v17, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v2, v5, 0x2

    move-object/from16 v18, v3

    .end local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const-string v3, "Second type cut: "

    move-object/from16 v19, v4

    .end local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v19, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    const-string v4, "First type cut: "

    if-ne v0, v2, :cond_db

    add-int/lit8 v0, v5, 0x1

    .line 424
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_9a

    goto :goto_db

    .line 434
    :cond_9a
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 435
    .end local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_ba

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_ba
    iget-object v2, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 437
    .end local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_11b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 427
    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_db
    :goto_db
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 428
    .end local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_fb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_fb
    iget-object v2, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 430
    .end local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_11b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_11b
    :goto_11b
    iget-object v3, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 443
    .end local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_13d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v1  # "baseType":Ljava/lang/String;
    .end local v5  # "slashpos":I
    :cond_13d
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_18a

    .line 444
    .end local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1  # "baseType":Ljava/lang/String;
    .restart local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v5  # "slashpos":I
    :cond_142
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_188

    .line 448
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 449
    .end local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_18a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typed Action list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    .line 420
    .end local v1  # "baseType":Ljava/lang/String;
    .end local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_177
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    goto :goto_188

    .line 418
    .end local v5  # "slashpos":I
    .end local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_180
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 457
    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17  # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18  # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_188
    :goto_188
    move-object/from16 v0, v16

    .end local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_18a
    :goto_18a
    if-eqz v12, :cond_1b0

    .line 458
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 459
    .end local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v1, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_1ae

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1ae
    move-object/from16 v19, v1

    .end local v1  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19  # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_1b0
    if-nez v11, :cond_1e1

    if-nez v12, :cond_1e1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e1

    .line 466
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/IntentFilter;

    .line 467
    if-eqz v14, :cond_1e1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1e1
    move-object/from16 v16, v0

    .end local v0  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16  # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v20

    .line 471
    .local v20, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v16, :cond_1fd

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 475
    :cond_1fd
    if-eqz v17, :cond_213

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 479
    :cond_213
    if-eqz v18, :cond_229

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 483
    :cond_229
    if-eqz v19, :cond_23f

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 487
    :cond_23f
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 488
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 490
    if-eqz v14, :cond_26e

    .line 491
    const-string v0, "Final result list:"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26e

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

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_24d

    .line 496
    .end local v0  # "i":I
    :cond_26e
    return-object v13
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 22
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "defaultOnly"  # Z
    .param p5, "userId"  # I
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    move-object/from16 v10, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 383
    .local v11, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move v3, v0

    .line 386
    .local v3, "debug":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v12

    .line 387
    .local v12, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 388
    .local v13, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 389
    .local v14, "N":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_23
    if-ge v15, v14, :cond_42

    .line 390
    nop

    .line 391
    move-object/from16 v9, p4

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/content/IntentFilter;

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v11

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 389
    add-int/lit8 v15, v15, 0x1

    goto :goto_23

    .line 393
    .end local v15  # "i":I
    :cond_42
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, "numT":I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 208
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 211
    :cond_21
    if-eqz v1, :cond_2e

    .line 212
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 550
    return-void
.end method

.method writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 16
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
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
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 285
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "mapi":I
    :goto_5
    if-ge v1, v0, :cond_3c

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 287
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/IntentFilter;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 289
    .local v7, "f":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_33

    .line 290
    const-wide v8, 0x20900000002L

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    .end local v7  # "f":Landroid/content/IntentFilter;, "TF;"
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 293
    :cond_36
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    .end local v2  # "token":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 295
    .end local v1  # "mapi":I
    :cond_3c
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 298
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 299
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000002L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 301
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000003L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 305
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 306
    return-void
.end method
